
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_GL_SwapWindow (int ) ;
 int draw_main () ;
 int window ;

void draw(void)
{
   draw_main();
   SDL_GL_SwapWindow(window);
}
