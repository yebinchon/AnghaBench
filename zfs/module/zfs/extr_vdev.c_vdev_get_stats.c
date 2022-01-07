
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int vdev_stat_t ;


 void vdev_get_stats_ex (int *,int *,int *) ;

void
vdev_get_stats(vdev_t *vd, vdev_stat_t *vs)
{
 return (vdev_get_stats_ex(vd, vs, ((void*)0)));
}
