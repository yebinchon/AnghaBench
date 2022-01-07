
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_COLOR_BUFFER_BIT ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_LIGHTING ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int GL_TEXTURE_2D ;
 scalar_t__ black_on_white ;
 int glClear (int ) ;
 int glClearColor (int,int,int,int ) ;
 int glDisable (int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glViewport (int ,int ,int ,int ) ;
 int gluOrtho2D (int ,int ,int ,int ) ;
 int sx ;
 int sy ;

void draw_init(void)
{
   glDisable(GL_CULL_FACE);
   glDisable(GL_TEXTURE_2D);
   glDisable(GL_LIGHTING);
   glDisable(GL_DEPTH_TEST);

   glViewport(0,0,sx,sy);
   if (black_on_white)
      glClearColor(255,255,255,0);
   else
      glClearColor(0,0,0,0);
   glClear(GL_COLOR_BUFFER_BIT);

   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   gluOrtho2D(0,sx,sy,0);
   glMatrixMode(GL_MODELVIEW);
   glLoadIdentity();
}
