
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;


 int GL_AMBIENT ;
 int GL_AMBIENT_AND_DIFFUSE ;
 scalar_t__ GL_COLOR_MATERIAL ;
 int GL_DIFFUSE ;
 int GL_FRONT ;
 scalar_t__ GL_LIGHT0 ;
 int GL_POSITION ;
 int GL_SPECULAR ;
 int glColorMaterial (int ,int ) ;
 int glEnable (scalar_t__) ;
 int glLightfv (scalar_t__,int ,float*) ;
 float sqrt (float) ;

void stbgl_SimpleLight(int index, float bright, float x, float y, float z)
{
   float d = (float) (1.0f/sqrt(x*x+y*y+z*z));
   float dir[4] = { x*d,y*d,z*d,0 }, zero[4] = { 0,0,0,0 };
   float c[4] = { bright,bright,bright,0 };
   GLuint light = GL_LIGHT0 + index;
   glLightfv(light, GL_POSITION, dir);
   glLightfv(light, GL_DIFFUSE, c);
   glLightfv(light, GL_AMBIENT, zero);
   glLightfv(light, GL_SPECULAR, zero);
   glEnable(light);
   glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
   glEnable(GL_COLOR_MATERIAL);
}
