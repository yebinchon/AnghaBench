
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * vdev_ops; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int dva_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int DTL_PARTIAL ;
 scalar_t__ DVA_GET_GANG (int const*) ;
 int DVA_GET_OFFSET (int const*) ;
 int DVA_GET_VDEV (int const*) ;
 int dsl_scan_check_deferred (TYPE_1__*) ;
 int vdev_dtl_contains (TYPE_1__*,int ,int ,int) ;
 int vdev_dtl_need_resilver (TYPE_1__*,int ,size_t) ;
 int vdev_indirect_ops ;
 TYPE_1__* vdev_lookup_top (int *,int ) ;

__attribute__((used)) static boolean_t
dsl_scan_need_resilver(spa_t *spa, const dva_t *dva, size_t psize,
    uint64_t phys_birth)
{
 vdev_t *vd;

 vd = vdev_lookup_top(spa, DVA_GET_VDEV(dva));

 if (vd->vdev_ops == &vdev_indirect_ops) {







  return (B_TRUE);
 }

 if (DVA_GET_GANG(dva)) {
  return (B_TRUE);
 }





 if (!vdev_dtl_contains(vd, DTL_PARTIAL, phys_birth, 1))
  return (B_FALSE);







 if (!vdev_dtl_need_resilver(vd, DVA_GET_OFFSET(dva), psize))
  return (B_FALSE);





 if (!dsl_scan_check_deferred(vd))
  return (B_FALSE);

 return (B_TRUE);
}
