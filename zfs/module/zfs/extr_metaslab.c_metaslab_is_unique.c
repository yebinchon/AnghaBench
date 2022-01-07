
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int ms_id; TYPE_2__* ms_group; } ;
typedef TYPE_3__ metaslab_t ;
typedef int dva_t ;
typedef int boolean_t ;
struct TYPE_6__ {TYPE_1__* mg_vd; } ;
struct TYPE_5__ {scalar_t__ vdev_id; int vdev_ms_shift; } ;


 int B_TRUE ;
 scalar_t__ DVA_GET_ASIZE (int *) ;
 int DVA_GET_OFFSET (int *) ;
 scalar_t__ DVA_GET_VDEV (int *) ;

__attribute__((used)) static boolean_t
metaslab_is_unique(metaslab_t *msp, dva_t *dva)
{
 uint64_t dva_ms_id;

 if (DVA_GET_ASIZE(dva) == 0)
  return (B_TRUE);

 if (msp->ms_group->mg_vd->vdev_id != DVA_GET_VDEV(dva))
  return (B_TRUE);

 dva_ms_id = DVA_GET_OFFSET(dva) >> msp->ms_group->mg_vd->vdev_ms_shift;

 return (msp->ms_id != dva_ms_id);
}
