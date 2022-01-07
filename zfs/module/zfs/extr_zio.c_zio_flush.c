
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef int vdev_t ;


 int DKIOCFLUSHWRITECACHE ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_DONT_PROPAGATE ;
 int ZIO_FLAG_DONT_RETRY ;
 int zio_ioctl (TYPE_1__*,int ,int *,int ,int *,int *,int) ;
 int zio_nowait (int ) ;

void
zio_flush(zio_t *zio, vdev_t *vd)
{
 zio_nowait(zio_ioctl(zio, zio->io_spa, vd, DKIOCFLUSHWRITECACHE,
     ((void*)0), ((void*)0),
     ZIO_FLAG_CANFAIL | ZIO_FLAG_DONT_PROPAGATE | ZIO_FLAG_DONT_RETRY));
}
