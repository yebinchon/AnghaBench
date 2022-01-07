
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_ms_shift; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int boolean_t ;


 TYPE_1__* vdev_lookup_top (int *,int) ;

__attribute__((used)) static boolean_t
same_metaslab(spa_t *spa, uint64_t vdev, uint64_t off1, uint64_t off2)
{
 vdev_t *vd = vdev_lookup_top(spa, vdev);
 uint64_t ms_shift = vd->vdev_ms_shift;

 return ((off1 >> ms_shift) == (off2 >> ms_shift));
}
