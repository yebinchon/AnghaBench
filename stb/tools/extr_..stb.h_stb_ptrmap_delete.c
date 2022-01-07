
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int limit; TYPE_1__* table; } ;
typedef TYPE_2__ stb_ptrmap ;
struct TYPE_5__ {scalar_t__ k; void* v; } ;


 scalar_t__ STB_EDEL ;
 scalar_t__ STB_EMPTY ;
 void free (void*) ;
 int stb_ptrmap_destroy (TYPE_2__*) ;

void stb_ptrmap_delete(stb_ptrmap *e, void (*free_func)(void *))
{
   int i;
   if (free_func)
      for (i=0; i < e->limit; ++i)
         if (e->table[i].k != STB_EMPTY && e->table[i].k != STB_EDEL) {
            if (free_func == free)
               free(e->table[i].v);
            else
               free_func(e->table[i].v);
         }
   stb_ptrmap_destroy(e);
}
