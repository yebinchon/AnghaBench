
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_6__ {int ht_bits; int ht_key; int ht_lock; TYPE_1__* ht_bins; } ;
typedef TYPE_2__ tsd_hash_table_t ;
typedef int tsd_hash_bin_t ;
struct TYPE_5__ {int hb_head; int hb_lock; } ;


 int INIT_HLIST_HEAD (int *) ;
 int KM_SLEEP ;
 int kmem_free (TYPE_2__*,int) ;
 void* kmem_zalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static tsd_hash_table_t *
tsd_hash_table_init(uint_t bits)
{
 tsd_hash_table_t *table;
 int hash, size = (1 << bits);

 table = kmem_zalloc(sizeof (tsd_hash_table_t), KM_SLEEP);
 if (table == ((void*)0))
  return (((void*)0));

 table->ht_bins = kmem_zalloc(sizeof (tsd_hash_bin_t) * size, KM_SLEEP);
 if (table->ht_bins == ((void*)0)) {
  kmem_free(table, sizeof (tsd_hash_table_t));
  return (((void*)0));
 }

 for (hash = 0; hash < size; hash++) {
  spin_lock_init(&table->ht_bins[hash].hb_lock);
  INIT_HLIST_HEAD(&table->ht_bins[hash].hb_head);
 }

 spin_lock_init(&table->ht_lock);
 table->ht_bits = bits;
 table->ht_key = 1;

 return (table);
}
