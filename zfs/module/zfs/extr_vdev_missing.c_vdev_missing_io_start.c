
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_error; } ;
typedef TYPE_1__ zio_t ;


 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int zio_execute (TYPE_1__*) ;

__attribute__((used)) static void
vdev_missing_io_start(zio_t *zio)
{
 zio->io_error = SET_ERROR(ENOTSUP);
 zio_execute(zio);
}
