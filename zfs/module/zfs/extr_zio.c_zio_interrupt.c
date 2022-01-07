
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;


 int B_FALSE ;
 int ZIO_TASKQ_INTERRUPT ;
 int zio_taskq_dispatch (int *,int ,int ) ;

void
zio_interrupt(zio_t *zio)
{
 zio_taskq_dispatch(zio, ZIO_TASKQ_INTERRUPT, B_FALSE);
}
