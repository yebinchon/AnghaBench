
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;
typedef int GLint ;
typedef int GLenum ;
typedef char GLchar ;


 int GL_COMPILE_STATUS ;
 int GL_INFO_LOG_LENGTH ;
 int free (char*) ;
 int glCompileShader (scalar_t__) ;
 scalar_t__ glCreateShader (int const) ;
 int glDeleteShader (scalar_t__) ;
 int glGetShaderInfoLog (scalar_t__,int,int *,char*) ;
 int glGetShaderiv (scalar_t__,int ,int*) ;
 int glShaderSource (scalar_t__,int,char const**,int *) ;
 char* malloc (int) ;
 int printf (char*,char*) ;

__attribute__((used)) static GLuint compileShader(GLenum const type, const GLchar* text) {
 GLuint shader = glCreateShader(type);
 if (shader) {
  glShaderSource (shader, 1, &text, ((void*)0));
  glCompileShader(shader);
  GLint compiled;
  glGetShaderiv(shader, GL_COMPILE_STATUS, &compiled);
  if (compiled) {
   return shader;
  } else {
   GLint logLen;
   glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &logLen);
   if (logLen > 1) {
    GLchar* logStr = malloc(logLen);
    glGetShaderInfoLog(shader, logLen, ((void*)0), logStr);

    printf("Shader compilation error: %s\n", logStr);

    free(logStr);
   }
   glDeleteShader(shader);
  }
 }
 return 0;
}
