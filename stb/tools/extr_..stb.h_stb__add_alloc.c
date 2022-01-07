
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stb_uint32 ;
struct TYPE_2__ {size_t size; int line; char* file; int * p; } ;


 int * STB_DEL ;
 int assert (int) ;
 scalar_t__ stb__alloc_count ;
 scalar_t__ stb__alloc_limit ;
 int stb__alloc_mask ;
 TYPE_1__* stb__allocations ;
 int stb__grow_alloc () ;
 int stb_hashptr (void*) ;
 int stb_rehash (int) ;

__attribute__((used)) static void stb__add_alloc(void *p, size_t sz, char *file, int line)
{
   stb_uint32 h;
   int n;
   if (stb__alloc_count >= stb__alloc_limit)
      stb__grow_alloc();
   h = stb_hashptr(p);
   n = h & stb__alloc_mask;
   if (stb__allocations[n].p > STB_DEL) {
      int s = stb_rehash(h)|1;
      do {
         n = (n+s) & stb__alloc_mask;
      } while (stb__allocations[n].p > STB_DEL);
   }
   assert(stb__allocations[n].p == ((void*)0) || stb__allocations[n].p == STB_DEL);
   stb__allocations[n].p = p;
   stb__allocations[n].size = sz;
   stb__allocations[n].line = line;
   stb__allocations[n].file = file;
   ++stb__alloc_count;
}
