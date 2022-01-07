
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* io_vsd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int mm_children; } ;
typedef TYPE_2__ mirror_map_t ;


 int kmem_free (TYPE_2__*,int ) ;
 int vdev_mirror_map_size (int ) ;

__attribute__((used)) static void
vdev_mirror_map_free(zio_t *zio)
{
 mirror_map_t *mm = zio->io_vsd;

 kmem_free(mm, vdev_mirror_map_size(mm->mm_children));
}
