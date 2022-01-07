
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int as_numbuckets; TYPE_2__* as_buckets; int as_lock; int as_upper_bound; int as_lower_bound; } ;
typedef TYPE_1__ aggsum_t ;
typedef int aggsum_bucket_t ;
struct TYPE_6__ {int asc_lock; } ;


 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int boot_ncpus ;
 int bzero (TYPE_1__*,int) ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int mutex_init (int *,int *,int ,int *) ;

void
aggsum_init(aggsum_t *as, uint64_t value)
{
 bzero(as, sizeof (*as));
 as->as_lower_bound = as->as_upper_bound = value;
 mutex_init(&as->as_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 as->as_numbuckets = boot_ncpus;
 as->as_buckets = kmem_zalloc(boot_ncpus * sizeof (aggsum_bucket_t),
     KM_SLEEP);
 for (int i = 0; i < as->as_numbuckets; i++) {
  mutex_init(&as->as_buckets[i].asc_lock,
      ((void*)0), MUTEX_DEFAULT, ((void*)0));
 }
}
