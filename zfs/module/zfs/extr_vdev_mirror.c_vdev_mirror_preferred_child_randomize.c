
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int io_offset; TYPE_2__* io_vsd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int mm_preferred_cnt; int* mm_preferred; scalar_t__ mm_root; } ;
typedef TYPE_2__ mirror_map_t ;


 int spa_get_random (int) ;
 int vdev_mirror_dva_select (TYPE_1__*,int) ;
 int vdev_mirror_shift ;

__attribute__((used)) static int
vdev_mirror_preferred_child_randomize(zio_t *zio)
{
 mirror_map_t *mm = zio->io_vsd;
 int p;

 if (mm->mm_root) {
  p = spa_get_random(mm->mm_preferred_cnt);
  return (vdev_mirror_dva_select(zio, p));
 }







 p = (zio->io_offset >> vdev_mirror_shift) % mm->mm_preferred_cnt;
 return (mm->mm_preferred[p]);
}
