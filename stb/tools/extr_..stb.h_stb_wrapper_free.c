
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; int file; int size; } ;


 int assert (int ) ;
 TYPE_1__* stb__alloc_history ;
 int stb__hashfind (void*) ;
 int stb__historyfind (void*) ;
 int stb__remove_alloc (int,char*,int) ;
 int stb_fatal (char*,void*,char*,...) ;

void stb_wrapper_free(void *p, char *file, int line)
{
   int n;

   if (p == ((void*)0)) return;

   n = stb__hashfind(p);

   if (n >= 0)
      stb__remove_alloc(n, file, line);
   else {

      n = stb__historyfind(p);
      assert(0);
      if (n >= 0)
         stb_fatal("Attempted to free %d-byte block %p at %s:%d previously freed/realloced at %s:%d",
                       stb__alloc_history[n].size, p,
                       file, line,
                       stb__alloc_history[n].file, stb__alloc_history[n].line);
      else
         stb_fatal("Attempted to free unknown block %p at %s:%d", p, file,line);
   }
}
