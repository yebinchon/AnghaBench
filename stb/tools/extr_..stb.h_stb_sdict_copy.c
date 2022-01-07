
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* arena; } ;
typedef TYPE_1__ stb_sdict ;


 int stb_free (void*) ;
 int * stb_malloc_global (int) ;
 TYPE_1__* stb_sdictinternal_copy (TYPE_1__*) ;

stb_sdict* stb_sdict_copy(stb_sdict *old)
{
   stb_sdict *n;
   void *old_arena = old->arena;
   void *new_arena = old_arena ? stb_malloc_global(1) : ((void*)0);
   old->arena = new_arena;
   n = stb_sdictinternal_copy(old);
   old->arena = old_arena;
   if (n)
      n->arena = new_arena;
   else if (new_arena)
      stb_free(new_arena);
   return n;
}
