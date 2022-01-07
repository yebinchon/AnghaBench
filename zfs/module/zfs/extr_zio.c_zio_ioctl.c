
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int io_cmd; } ;
typedef TYPE_1__ zio_t ;
typedef int zio_done_func_t ;
struct TYPE_13__ {int vdev_children; struct TYPE_13__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef int spa_t ;
typedef enum zio_flag { ____Placeholder_zio_flag } zio_flag ;


 int ZIO_IOCTL_PIPELINE ;
 int ZIO_PRIORITY_NOW ;
 int ZIO_STAGE_OPEN ;
 int ZIO_TYPE_IOCTL ;
 TYPE_1__* zio_create (TYPE_1__*,int *,int ,int *,int *,int ,int ,int *,void*,int ,int ,int,TYPE_2__*,int ,int *,int ,int ) ;
 int zio_nowait (TYPE_1__*) ;
 TYPE_1__* zio_null (TYPE_1__*,int *,int *,int *,int *,int) ;

zio_t *
zio_ioctl(zio_t *pio, spa_t *spa, vdev_t *vd, int cmd,
    zio_done_func_t *done, void *private, enum zio_flag flags)
{
 zio_t *zio;
 int c;

 if (vd->vdev_children == 0) {
  zio = zio_create(pio, spa, 0, ((void*)0), ((void*)0), 0, 0, done, private,
      ZIO_TYPE_IOCTL, ZIO_PRIORITY_NOW, flags, vd, 0, ((void*)0),
      ZIO_STAGE_OPEN, ZIO_IOCTL_PIPELINE);

  zio->io_cmd = cmd;
 } else {
  zio = zio_null(pio, spa, ((void*)0), ((void*)0), ((void*)0), flags);

  for (c = 0; c < vd->vdev_children; c++)
   zio_nowait(zio_ioctl(zio, spa, vd->vdev_child[c], cmd,
       done, private, flags));
 }

 return (zio);
}
