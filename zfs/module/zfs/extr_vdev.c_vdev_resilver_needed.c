
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vdev_children; struct TYPE_6__** vdev_child; int vdev_dtl_lock; int * vdev_dtl; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 size_t DTL_MISSING ;
 int MAX (int ,int ) ;
 int MIN (int ,int ) ;
 int UINT64_MAX ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int range_tree_is_empty (int ) ;
 int vdev_dtl_max (TYPE_1__*) ;
 int vdev_dtl_min (TYPE_1__*) ;
 scalar_t__ vdev_writeable (TYPE_1__*) ;

boolean_t
vdev_resilver_needed(vdev_t *vd, uint64_t *minp, uint64_t *maxp)
{
 boolean_t needed = B_FALSE;
 uint64_t thismin = UINT64_MAX;
 uint64_t thismax = 0;

 if (vd->vdev_children == 0) {
  mutex_enter(&vd->vdev_dtl_lock);
  if (!range_tree_is_empty(vd->vdev_dtl[DTL_MISSING]) &&
      vdev_writeable(vd)) {

   thismin = vdev_dtl_min(vd);
   thismax = vdev_dtl_max(vd);
   needed = B_TRUE;
  }
  mutex_exit(&vd->vdev_dtl_lock);
 } else {
  for (int c = 0; c < vd->vdev_children; c++) {
   vdev_t *cvd = vd->vdev_child[c];
   uint64_t cmin, cmax;

   if (vdev_resilver_needed(cvd, &cmin, &cmax)) {
    thismin = MIN(thismin, cmin);
    thismax = MAX(thismax, cmax);
    needed = B_TRUE;
   }
  }
 }

 if (needed && minp) {
  *minp = thismin;
  *maxp = thismax;
 }
 return (needed);
}
