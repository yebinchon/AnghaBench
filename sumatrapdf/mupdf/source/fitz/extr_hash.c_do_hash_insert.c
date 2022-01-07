
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int size; scalar_t__ lock; int keylen; int load; TYPE_2__* ents; } ;
typedef TYPE_1__ fz_hash_table ;
struct TYPE_5__ {void* val; int key; } ;
typedef TYPE_2__ fz_hash_entry ;
typedef int fz_context ;


 int fz_assert_lock_held (int *,scalar_t__) ;
 int fz_warn (int *,char*) ;
 unsigned int hash (void const*,int ) ;
 scalar_t__ memcmp (void const*,int ,int ) ;
 int memcpy (int ,void const*,int ) ;

__attribute__((used)) static void *
do_hash_insert(fz_context *ctx, fz_hash_table *table, const void *key, void *val)
{
 fz_hash_entry *ents;
 unsigned size;
 unsigned pos;

 ents = table->ents;
 size = table->size;
 pos = hash(key, table->keylen) % size;

 if (table->lock >= 0)
  fz_assert_lock_held(ctx, table->lock);

 while (1)
 {
  if (!ents[pos].val)
  {
   memcpy(ents[pos].key, key, table->keylen);
   ents[pos].val = val;
   table->load ++;
   return ((void*)0);
  }

  if (memcmp(key, ents[pos].key, table->keylen) == 0)
  {

   if (val != ents[pos].val)
    fz_warn(ctx, "assert: overwrite hash slot with different value!");
   else
    fz_warn(ctx, "assert: overwrite hash slot with same value");
   return ents[pos].val;
  }

  pos = (pos + 1) % size;
 }
}
