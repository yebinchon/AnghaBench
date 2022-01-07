
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLint ;


 int stbglGetUniformLocation (int ,char*) ;

GLint stbgl_find_uniform(GLuint prog, char *uniform)
{
   return stbglGetUniformLocation(prog, uniform);
}
