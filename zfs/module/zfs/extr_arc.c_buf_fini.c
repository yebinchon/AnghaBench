
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ht_mask; TYPE_1__* ht_locks; int ht_table; } ;
struct TYPE_3__ {int ht_lock; } ;


 int BUF_LOCKS ;
 int buf_cache ;
 TYPE_2__ buf_hash_table ;
 int hdr_full_cache ;
 int hdr_full_crypt_cache ;
 int hdr_l2only_cache ;
 int kmem_cache_destroy (int ) ;
 int kmem_free (int ,int) ;
 int mutex_destroy (int *) ;
 int vmem_free (int ,int) ;

__attribute__((used)) static void
buf_fini(void)
{
 int i;
 kmem_free(buf_hash_table.ht_table,
     (buf_hash_table.ht_mask + 1) * sizeof (void *));

 for (i = 0; i < BUF_LOCKS; i++)
  mutex_destroy(&buf_hash_table.ht_locks[i].ht_lock);
 kmem_cache_destroy(hdr_full_cache);
 kmem_cache_destroy(hdr_full_crypt_cache);
 kmem_cache_destroy(hdr_l2only_cache);
 kmem_cache_destroy(buf_cache);
}
