
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rr_linked_rcount; int rr_anon_rcount; int * rr_writer; int rr_cv; int rr_lock; } ;
typedef TYPE_1__ rrwlock_t ;


 int ASSERT (int ) ;
 int cv_destroy (int *) ;
 int mutex_destroy (int *) ;
 int zfs_refcount_destroy (int *) ;

void
rrw_destroy(rrwlock_t *rrl)
{
 mutex_destroy(&rrl->rr_lock);
 cv_destroy(&rrl->rr_cv);
 ASSERT(rrl->rr_writer == ((void*)0));
 zfs_refcount_destroy(&rrl->rr_anon_rcount);
 zfs_refcount_destroy(&rrl->rr_linked_rcount);
}
