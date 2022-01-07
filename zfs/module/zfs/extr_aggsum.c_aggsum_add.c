
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct aggsum_bucket {int asc_delta; int asc_lock; scalar_t__ asc_borrowed; } ;
typedef int int64_t ;
struct TYPE_4__ {size_t as_numbuckets; struct aggsum_bucket* as_buckets; } ;
typedef TYPE_1__ aggsum_t ;


 size_t CPU_SEQID ;
 int aggsum_borrow (TYPE_1__*,int,struct aggsum_bucket*) ;
 int aggsum_borrow_multiplier ;
 int kpreempt_disable () ;
 int kpreempt_enable () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
aggsum_add(aggsum_t *as, int64_t delta)
{
 struct aggsum_bucket *asb;

 kpreempt_disable();
 asb = &as->as_buckets[CPU_SEQID % as->as_numbuckets];
 kpreempt_enable();

 for (;;) {
  mutex_enter(&asb->asc_lock);
  if (asb->asc_delta + delta <= (int64_t)asb->asc_borrowed &&
      asb->asc_delta + delta >= -(int64_t)asb->asc_borrowed) {
   asb->asc_delta += delta;
   mutex_exit(&asb->asc_lock);
   return;
  }
  mutex_exit(&asb->asc_lock);
  aggsum_borrow(as, delta * aggsum_borrow_multiplier, asb);
 }
}
