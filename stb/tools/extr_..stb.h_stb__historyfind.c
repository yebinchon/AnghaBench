
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* p; } ;


 int STB_MALLOC_HISTORY_COUNT ;
 TYPE_1__* stb__alloc_history ;
 int stb__history_pos ;

__attribute__((used)) static int stb__historyfind(void *p)
{
   int n = stb__history_pos;
   int i;
   for (i=0; i < STB_MALLOC_HISTORY_COUNT; ++i) {
      if (--n < 0) n = STB_MALLOC_HISTORY_COUNT-1;
      if (stb__alloc_history[n].p == p)
         return n;
   }
   return -1;
}
