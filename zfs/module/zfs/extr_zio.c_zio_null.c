
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
typedef int zio_done_func_t ;
typedef int vdev_t ;
typedef int spa_t ;
typedef enum zio_flag { ____Placeholder_zio_flag } zio_flag ;


 int ZIO_INTERLOCK_PIPELINE ;
 int ZIO_PRIORITY_NOW ;
 int ZIO_STAGE_OPEN ;
 int ZIO_TYPE_NULL ;
 int * zio_create (int *,int *,int ,int *,int *,int ,int ,int *,void*,int ,int ,int,int *,int ,int *,int ,int ) ;

zio_t *
zio_null(zio_t *pio, spa_t *spa, vdev_t *vd, zio_done_func_t *done,
    void *private, enum zio_flag flags)
{
 zio_t *zio;

 zio = zio_create(pio, spa, 0, ((void*)0), ((void*)0), 0, 0, done, private,
     ZIO_TYPE_NULL, ZIO_PRIORITY_NOW, flags, vd, 0, ((void*)0),
     ZIO_STAGE_OPEN, ZIO_INTERLOCK_PIPELINE);

 return (zio);
}
