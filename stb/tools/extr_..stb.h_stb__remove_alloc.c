
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* file; int line; int p; } ;


 int STB_DEL ;
 size_t STB_MALLOC_HISTORY_COUNT ;
 int stb__alloc_count ;
 TYPE_1__* stb__alloc_history ;
 TYPE_1__* stb__allocations ;
 size_t stb__history_pos ;

__attribute__((used)) static void stb__remove_alloc(int n, char *file, int line)
{
   stb__alloc_history[stb__history_pos] = stb__allocations[n];
   stb__alloc_history[stb__history_pos].file = file;
   stb__alloc_history[stb__history_pos].line = line;
   if (++stb__history_pos == STB_MALLOC_HISTORY_COUNT)
      stb__history_pos = 0;
   stb__allocations[n].p = STB_DEL;
   --stb__alloc_count;
}
