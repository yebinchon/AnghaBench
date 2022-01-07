
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int io_error; TYPE_1__* io_vd; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_7__ {int vf_vnode; } ;
typedef TYPE_3__ vdev_file_t ;
struct TYPE_5__ {TYPE_3__* vdev_tsd; } ;


 int FDSYNC ;
 int FSYNC ;
 int VOP_FSYNC (int ,int,int ,int *) ;
 int kcred ;
 int zio_interrupt (TYPE_2__*) ;

__attribute__((used)) static void
vdev_file_io_fsync(void *arg)
{
 zio_t *zio = (zio_t *)arg;
 vdev_file_t *vf = zio->io_vd->vdev_tsd;

 zio->io_error = VOP_FSYNC(vf->vf_vnode, FSYNC | FDSYNC, kcred, ((void*)0));

 zio_interrupt(zio);
}
