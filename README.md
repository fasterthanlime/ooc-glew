
## ooc-glew

A GLEW binding for ooc. GLEW is GL extension wrangler, it provides efficient
run-time mechanisms for determining which OpenGL extensions are supported on
the target platform.

Generated against glew 1.5.1.

If you want to remake it for whatever reason, you'll need glew and ruby
installed, then:

```
cd generate
ruby glewby.rb --glew-header <path/to/GL/glew.h> --template-directory in --output-directory ../source
```

### Authors

  * Keith Bauer
  * Peter Lichard
  * Amos Wenger

### Links

  * GLEWby: http://onesadcookie.com/svn/GLEWby
  * GLEW: http://glew.sourceforge.net/

