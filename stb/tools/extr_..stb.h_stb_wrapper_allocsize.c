
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; } ;


 TYPE_1__* stb__allocations ;
 int stb__hashfind (void*) ;

size_t stb_wrapper_allocsize(void *p)
{
   int n = stb__hashfind(p);
   if (n < 0) return 0;
   return stb__allocations[n].size;
}
