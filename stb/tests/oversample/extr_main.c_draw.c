
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int draw_init () ;
 int draw_world () ;
 int stbwingraph_SwapBuffers (int *) ;

void draw(void)
{
   draw_init();
   draw_world();
   stbwingraph_SwapBuffers(((void*)0));
}
