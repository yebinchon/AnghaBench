
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_6__ {int ht_lock; TYPE_3__* ht_bins; int ht_bits; } ;
typedef TYPE_1__ tsd_hash_table_t ;
struct TYPE_7__ {int he_list; int he_pid_list; int he_key_list; int * he_value; int * he_dtor; scalar_t__ he_pid; scalar_t__ he_key; } ;
typedef TYPE_2__ tsd_hash_entry_t ;
struct TYPE_8__ {int hb_lock; int hb_head; } ;
typedef TYPE_3__ tsd_hash_bin_t ;
typedef scalar_t__ pid_t ;


 int ENOMEM ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int KM_PUSHPAGE ;
 scalar_t__ PID_KEY ;
 size_t hash_long (size_t,int ) ;
 int hlist_add_head (int *,int *) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
tsd_hash_add_pid(tsd_hash_table_t *table, pid_t pid)
{
 tsd_hash_entry_t *entry;
 tsd_hash_bin_t *bin;
 ulong_t hash;


 entry = kmem_alloc(sizeof (tsd_hash_entry_t), KM_PUSHPAGE);
 if (entry == ((void*)0))
  return (ENOMEM);

 spin_lock(&table->ht_lock);
 entry->he_key = PID_KEY;
 entry->he_pid = pid;
 entry->he_dtor = ((void*)0);
 entry->he_value = ((void*)0);
 INIT_HLIST_NODE(&entry->he_list);
 INIT_LIST_HEAD(&entry->he_key_list);
 INIT_LIST_HEAD(&entry->he_pid_list);

 hash = hash_long((ulong_t)PID_KEY * (ulong_t)pid, table->ht_bits);
 bin = &table->ht_bins[hash];
 spin_lock(&bin->hb_lock);

 hlist_add_head(&entry->he_list, &bin->hb_head);

 spin_unlock(&bin->hb_lock);
 spin_unlock(&table->ht_lock);

 return (0);
}
