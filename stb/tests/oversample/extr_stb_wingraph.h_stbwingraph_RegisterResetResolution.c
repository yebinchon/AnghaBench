
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atexit (int ) ;
 int stbwingraph_ResetResolution ;

__attribute__((used)) static void stbwingraph_RegisterResetResolution(void)
{
   static int done=0;
   if (!done) {
      done = 1;
      atexit(stbwingraph_ResetResolution);
   }
}
