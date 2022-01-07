
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_POLYGON ;
 int glBegin (int ) ;
 int glEnd () ;
 int glTexCoord2f (int,int) ;
 int glVertex2f (float,float) ;

void stbgl_drawRect(float x0, float y0, float x1, float y1)
{
   glBegin(GL_POLYGON);
      glTexCoord2f(0,0); glVertex2f(x0,y0);
      glTexCoord2f(1,0); glVertex2f(x1,y0);
      glTexCoord2f(1,1); glVertex2f(x1,y1);
      glTexCoord2f(0,1); glVertex2f(x0,y1);
   glEnd();
}
