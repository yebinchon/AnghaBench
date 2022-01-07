
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct aggsum_bucket {scalar_t__ asc_borrowed; scalar_t__ asc_delta; int asc_lock; } ;
struct TYPE_3__ {int as_lower_bound; int as_upper_bound; int as_lock; } ;
typedef TYPE_1__ aggsum_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int atomic_add_64 (int volatile*,scalar_t__) ;

__attribute__((used)) static void
aggsum_flush_bucket(aggsum_t *as, struct aggsum_bucket *asb)
{
 ASSERT(MUTEX_HELD(&as->as_lock));
 ASSERT(MUTEX_HELD(&asb->asc_lock));





 atomic_add_64((volatile uint64_t *)&as->as_lower_bound, asb->asc_delta);
 atomic_add_64((volatile uint64_t *)&as->as_upper_bound, asb->asc_delta);
 asb->asc_delta = 0;
 atomic_add_64((volatile uint64_t *)&as->as_upper_bound,
     -asb->asc_borrowed);
 atomic_add_64((volatile uint64_t *)&as->as_lower_bound,
     asb->asc_borrowed);
 asb->asc_borrowed = 0;
}
