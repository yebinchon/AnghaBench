
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_POLYGON ;
 int glBegin (int ) ;
 int glEnd () ;
 int glTexCoord2f (float,float) ;
 int glVertex2f (float,float) ;

void stbgl_drawRectTC(float x0, float y0, float x1, float y1, float s0, float t0, float s1, float t1)
{
   glBegin(GL_POLYGON);
      glTexCoord2f(s0,t0); glVertex2f(x0,y0);
      glTexCoord2f(s1,t0); glVertex2f(x1,y0);
      glTexCoord2f(s1,t1); glVertex2f(x1,y1);
      glTexCoord2f(s0,t1); glVertex2f(x0,y1);
   glEnd();
}
