
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vdev_children; scalar_t__ vdev_isspare; struct TYPE_7__** vdev_child; scalar_t__ vdev_unspare; int * vdev_ops; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int) ;
 int DTL_MISSING ;
 int DTL_OUTAGE ;
 scalar_t__ vdev_dtl_empty (TYPE_1__*,int ) ;
 int vdev_dtl_required (TYPE_1__*) ;
 int vdev_propagate_state (TYPE_1__*) ;
 int vdev_replacing_ops ;
 int vdev_spare_ops ;

__attribute__((used)) static vdev_t *
spa_vdev_resilver_done_hunt(vdev_t *vd)
{
 vdev_t *newvd, *oldvd;

 for (int c = 0; c < vd->vdev_children; c++) {
  oldvd = spa_vdev_resilver_done_hunt(vd->vdev_child[c]);
  if (oldvd != ((void*)0))
   return (oldvd);
 }
 if (vd->vdev_ops == &vdev_replacing_ops) {
  ASSERT(vd->vdev_children > 1);

  newvd = vd->vdev_child[vd->vdev_children - 1];
  oldvd = vd->vdev_child[0];

  if (vdev_dtl_empty(newvd, DTL_MISSING) &&
      vdev_dtl_empty(newvd, DTL_OUTAGE) &&
      !vdev_dtl_required(oldvd))
   return (oldvd);
 }





 if (vd->vdev_ops == &vdev_spare_ops) {
  vdev_t *first = vd->vdev_child[0];
  vdev_t *last = vd->vdev_child[vd->vdev_children - 1];

  if (last->vdev_unspare) {
   oldvd = first;
   newvd = last;
  } else if (first->vdev_unspare) {
   oldvd = last;
   newvd = first;
  } else {
   oldvd = ((void*)0);
  }

  if (oldvd != ((void*)0) &&
      vdev_dtl_empty(newvd, DTL_MISSING) &&
      vdev_dtl_empty(newvd, DTL_OUTAGE) &&
      !vdev_dtl_required(oldvd))
   return (oldvd);

  vdev_propagate_state(vd);
  if (vd->vdev_children > 2) {
   newvd = vd->vdev_child[1];

   if (newvd->vdev_isspare && last->vdev_isspare &&
       vdev_dtl_empty(last, DTL_MISSING) &&
       vdev_dtl_empty(last, DTL_OUTAGE) &&
       !vdev_dtl_required(newvd))
    return (newvd);
  }
 }

 return (((void*)0));
}
