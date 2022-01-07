
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int line; int file; int size; } ;
struct TYPE_3__ {size_t size; char* file; int line; } ;


 int assert (int ) ;
 int stb__add_alloc (void*,size_t,char*,int) ;
 TYPE_2__* stb__alloc_history ;
 TYPE_1__* stb__allocations ;
 int stb__hashfind (void*) ;
 int stb__historyfind (void*) ;
 int stb__remove_alloc (int,char*,int) ;
 int stb_fatal (char*,void*,char*,...) ;
 int stb_wrapper_malloc (void*,size_t,char*,int) ;

void stb_wrapper_realloc(void *p, void *q, size_t sz, char *file, int line)
{
   int n;
   if (p == ((void*)0)) { stb_wrapper_malloc(q, sz, file, line); return; }
   if (q == ((void*)0)) return;

   n = stb__hashfind(p);
   if (n == -1) {


      n = stb__historyfind(p);
      assert(0);
      if (n >= 0)
         stb_fatal("Attempted to realloc %d-byte block %p at %s:%d previously freed/realloced at %s:%d",
                       stb__alloc_history[n].size, p,
                       file, line,
                       stb__alloc_history[n].file, stb__alloc_history[n].line);
      else
         stb_fatal("Attempted to realloc unknown block %p at %s:%d", p, file,line);
   } else {
      if (q == p) {
         stb__allocations[n].size = sz;
         stb__allocations[n].file = file;
         stb__allocations[n].line = line;
      } else {
         stb__remove_alloc(n, file, line);
         stb__add_alloc(q,sz,file,line);
      }
   }
}
