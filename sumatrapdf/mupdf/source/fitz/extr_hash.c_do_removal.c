
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int size; scalar_t__ lock; int load; int keylen; TYPE_2__* ents; } ;
typedef TYPE_1__ fz_hash_table ;
struct TYPE_5__ {int * val; int key; } ;
typedef TYPE_2__ fz_hash_entry ;
typedef int fz_context ;


 int fz_assert_lock_held (int *,scalar_t__) ;
 unsigned int hash (int ,int ) ;

__attribute__((used)) static void
do_removal(fz_context *ctx, fz_hash_table *table, const void *key, unsigned hole)
{
 fz_hash_entry *ents = table->ents;
 unsigned size = table->size;
 unsigned look, code;

 if (table->lock >= 0)
  fz_assert_lock_held(ctx, table->lock);

 ents[hole].val = ((void*)0);

 look = hole + 1;
 if (look == size)
  look = 0;

 while (ents[look].val)
 {
  code = hash(ents[look].key, table->keylen) % size;
  if ((code <= hole && hole < look) ||
   (look < code && code <= hole) ||
   (hole < look && look < code))
  {
   ents[hole] = ents[look];
   ents[look].val = ((void*)0);
   hole = look;
  }

  look++;
  if (look == size)
   look = 0;
 }

 table->load --;
}
