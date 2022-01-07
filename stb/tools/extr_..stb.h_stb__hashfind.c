
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stb_uint32 ;
struct TYPE_2__ {void* p; } ;


 int stb__alloc_mask ;
 TYPE_1__* stb__allocations ;
 int stb_hashptr (void*) ;
 int stb_rehash (int) ;

__attribute__((used)) static int stb__hashfind(void *p)
{
   stb_uint32 h = stb_hashptr(p);
   int s,n = h & stb__alloc_mask;
   if (stb__allocations[n].p == p)
      return n;
   s = stb_rehash(h)|1;
   for(;;) {
      if (stb__allocations[n].p == ((void*)0))
         return -1;
      n = (n+s) & stb__alloc_mask;
      if (stb__allocations[n].p == p)
         return n;
   }
}
