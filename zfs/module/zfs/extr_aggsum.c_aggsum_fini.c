
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int as_numbuckets; int as_lock; TYPE_2__* as_buckets; } ;
typedef TYPE_1__ aggsum_t ;
typedef int aggsum_bucket_t ;
struct TYPE_5__ {int asc_lock; } ;


 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;

void
aggsum_fini(aggsum_t *as)
{
 for (int i = 0; i < as->as_numbuckets; i++)
  mutex_destroy(&as->as_buckets[i].asc_lock);
 kmem_free(as->as_buckets, as->as_numbuckets * sizeof (aggsum_bucket_t));
 mutex_destroy(&as->as_lock);
}
