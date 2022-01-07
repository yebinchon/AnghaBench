
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glScissor (int,int,int,int) ;
 int glViewport (int,int,int,int) ;
 int stbgl_Perspective (float,float,float,float,float) ;

void stbgl_PerspectiveViewport(int x, int y, int w, int h, float zoom, float min_hfov, float min_vfov, float znear, float zfar)
{
   if (znear <= 0.0001f) znear = 0.0001f;
   glViewport(x,y,w,h);
   glScissor(x,y,w,h);
   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   stbgl_Perspective(zoom, min_hfov, min_vfov, znear, zfar);
   glMatrixMode(GL_MODELVIEW);
}
