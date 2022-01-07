
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int load; int size; } ;
typedef TYPE_1__ fz_hash_table ;
typedef int fz_context ;


 void* do_hash_insert (int *,TYPE_1__*,void const*,void*) ;
 int fz_resize_hash (int *,TYPE_1__*,int) ;

void *
fz_hash_insert(fz_context *ctx, fz_hash_table *table, const void *key, void *val)
{
 if (table->load > table->size * 8 / 10)
  fz_resize_hash(ctx, table, table->size * 2);
 return do_hash_insert(ctx, table, key, val);
}
