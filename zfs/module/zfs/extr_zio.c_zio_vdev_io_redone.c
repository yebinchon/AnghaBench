
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_stage; } ;
typedef TYPE_1__ zio_t ;


 int ASSERT (int) ;
 int ZIO_STAGE_VDEV_IO_DONE ;

void
zio_vdev_io_redone(zio_t *zio)
{
 ASSERT(zio->io_stage == ZIO_STAGE_VDEV_IO_DONE);

 zio->io_stage >>= 1;
}
