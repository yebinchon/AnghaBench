
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int size; scalar_t__ lock; int keylen; TYPE_2__* ents; } ;
typedef TYPE_1__ fz_hash_table ;
struct TYPE_6__ {int key; int val; } ;
typedef TYPE_2__ fz_hash_entry ;
typedef int fz_context ;


 int do_removal (int *,TYPE_1__*,void const*,unsigned int) ;
 int fz_assert_lock_held (int *,scalar_t__) ;
 int fz_warn (int *,char*) ;
 unsigned int hash (void const*,int ) ;
 scalar_t__ memcmp (void const*,int ,int ) ;

void
fz_hash_remove(fz_context *ctx, fz_hash_table *table, const void *key)
{
 fz_hash_entry *ents = table->ents;
 unsigned size = table->size;
 unsigned pos = hash(key, table->keylen) % size;

 if (table->lock >= 0)
  fz_assert_lock_held(ctx, table->lock);

 while (1)
 {
  if (!ents[pos].val)
  {
   fz_warn(ctx, "assert: remove non-existent hash entry");
   return;
  }

  if (memcmp(key, ents[pos].key, table->keylen) == 0)
  {
   do_removal(ctx, table, key, pos);
   return;
  }

  pos++;
  if (pos == size)
   pos = 0;
 }
}
