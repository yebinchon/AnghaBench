
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; struct TYPE_4__* ents; int (* drop_val ) (int *,void*) ;void* val; } ;
typedef TYPE_1__ fz_hash_table ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;
 int stub1 (int *,void*) ;

void
fz_drop_hash_table(fz_context *ctx, fz_hash_table *table)
{
 if (!table)
  return;

 if (table->drop_val)
 {
  int i, n = table->size;
  for (i = 0; i < n; ++i)
  {
   void *v = table->ents[i].val;
   if (v)
    table->drop_val(ctx, v);
  }
 }

 fz_free(ctx, table->ents);
 fz_free(ctx, table);
}
