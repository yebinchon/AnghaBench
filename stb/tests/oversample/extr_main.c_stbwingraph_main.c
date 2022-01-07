
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_X ;
 int SIZE_Y ;
 int initialized ;
 int load_fonts () ;
 int loopmode ;
 int stbwingraph_CreateWindow (int,int ,int *,char*,int ,int ,int ,int,int ,int ) ;
 int stbwingraph_MainLoop (int ,float) ;
 int stbwingraph_Priority (int) ;
 int stbwingraph_ShowCursor (int *,int ) ;
 int winproc ;

void stbwingraph_main(void)
{
   stbwingraph_Priority(2);
   stbwingraph_CreateWindow(1, winproc, ((void*)0), "tt", SIZE_X,SIZE_Y, 0, 1, 0, 0);
   stbwingraph_ShowCursor(((void*)0), 0);
   load_fonts();
   initialized = 1;
   stbwingraph_MainLoop(loopmode, 0.016f);
}
