
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_error; int * io_private; } ;
typedef TYPE_1__ zio_t ;
typedef int uint64_t ;


 int atomic_inc_64 (int *) ;

__attribute__((used)) static void
vdev_label_sync_done(zio_t *zio)
{
 uint64_t *good_writes = zio->io_private;

 if (zio->io_error == 0)
  atomic_inc_64(good_writes);
}
