use sdl
import sdl/Core

use glew
import glew

main: func {

    (width, height) := (640, 480)
    SDL init(SDL_INIT_EVERYTHING)
    screen := SDL setMode(width, height, 16, SDL_OPENGL)
    SDL wmSetCaption("SDL glew example", null)

    reshape(width, height)
    draw()
    SDL glSwapBuffers()

    SDL delay(2000)

    SDL quit()

}

reshape: func (width, height: Int) {
    h := height as Float / width as Float

    glViewport(0, 0, width as Int, height as Int)
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    glFrustum(-1.0, 1.0, -h, h, 5.0, 60.0)
    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity()
}

draw: func {
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    glLoadIdentity()
    glTranslatef(0.0, 0.0, -10.0)

    glBegin(GL_TRIANGLES)
	glColor3f(1.0, 0.0, 0.0)
	glVertex3f( 0.0, 0.9, 0.0)
	glColor3f(0.0, 1.0, 0.0)
	glVertex3f(-1.0,-0.9, 0.0)
	glColor3f(0.0, 0.0, 1.0)
	glVertex3f( 1.0,-0.9, 0.0)
    glEnd()
}

