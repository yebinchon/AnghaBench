
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int line; int file; int size; } ;
struct TYPE_3__ {void* p; } ;


 TYPE_2__* stb__alloc_history ;
 int stb__alloc_size ;
 TYPE_1__* stb__allocations ;
 int stb__hashfind (void*) ;
 int stb__historyfind (void*) ;
 int stb_fatal (char*,...) ;

void stb_wrapper_check(void *p)
{
   int n;

   if (p == ((void*)0)) return;

   n = stb__hashfind(p);

   if (n >= 0) return;

   for (n=0; n < stb__alloc_size; ++n)
      if (stb__allocations[n].p == p)
         stb_fatal("Internal error: pointer %p was allocated, but hash search failed", p);


   n = stb__historyfind(p);
   if (n >= 0)
      stb_fatal("Checked %d-byte block %p previously freed/realloced at %s:%d",
                    stb__alloc_history[n].size, p,
                    stb__alloc_history[n].file, stb__alloc_history[n].line);
   stb_fatal("Checked unknown block %p");
}
