
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ p; size_t size; char* file; int line; } ;


 scalar_t__ STB_DEL ;
 int stb__alloc_size ;
 TYPE_1__* stb__allocations ;

void stb_wrapper_listall(void (*func)(void *ptr, size_t sz, char *file, int line))
{
   int i;
   for (i=0; i < stb__alloc_size; ++i)
      if (stb__allocations[i].p > STB_DEL)
         func(stb__allocations[i].p , stb__allocations[i].size,
              stb__allocations[i].file, stb__allocations[i].line);
}
