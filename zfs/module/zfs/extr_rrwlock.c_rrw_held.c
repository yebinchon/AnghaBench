
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rr_writer; int rr_lock; int rr_anon_rcount; } ;
typedef TYPE_1__ rrwlock_t ;
typedef scalar_t__ krw_t ;
typedef int boolean_t ;


 scalar_t__ RW_WRITER ;
 scalar_t__ curthread ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int * rrn_find (TYPE_1__*) ;
 int zfs_refcount_is_zero (int *) ;

boolean_t
rrw_held(rrwlock_t *rrl, krw_t rw)
{
 boolean_t held;

 mutex_enter(&rrl->rr_lock);
 if (rw == RW_WRITER) {
  held = (rrl->rr_writer == curthread);
 } else {
  held = (!zfs_refcount_is_zero(&rrl->rr_anon_rcount) ||
      rrn_find(rrl) != ((void*)0));
 }
 mutex_exit(&rrl->rr_lock);

 return (held);
}
