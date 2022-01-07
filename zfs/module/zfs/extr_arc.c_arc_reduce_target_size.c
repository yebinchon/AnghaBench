
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;


 int ASSERT (int) ;
 int B_TRUE ;
 scalar_t__ aggsum_value (int *) ;
 int arc_adjust_lock ;
 int arc_adjust_needed ;
 int arc_adjust_zthr ;
 int arc_c ;
 scalar_t__ arc_c_min ;
 int arc_p ;
 int arc_shrink_shift ;
 int arc_size ;
 int atomic_add_64 (int*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zthr_wakeup (int ) ;

void
arc_reduce_target_size(int64_t to_free)
{
 uint64_t asize = aggsum_value(&arc_size);
 uint64_t c = arc_c;

 if (c > to_free && c - to_free > arc_c_min) {
  arc_c = c - to_free;
  atomic_add_64(&arc_p, -(arc_p >> arc_shrink_shift));
  if (arc_p > arc_c)
   arc_p = (arc_c >> 1);
  ASSERT(arc_c >= arc_c_min);
  ASSERT((int64_t)arc_p >= 0);
 } else {
  arc_c = arc_c_min;
 }

 if (asize > arc_c) {

  mutex_enter(&arc_adjust_lock);
  arc_adjust_needed = B_TRUE;
  mutex_exit(&arc_adjust_lock);
  zthr_wakeup(arc_adjust_zthr);
 }
}
