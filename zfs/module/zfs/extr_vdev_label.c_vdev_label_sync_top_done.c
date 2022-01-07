
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_error; scalar_t__* io_private; } ;
typedef TYPE_1__ zio_t ;
typedef scalar_t__ uint64_t ;


 int EIO ;
 int SET_ERROR (int ) ;
 int kmem_free (scalar_t__*,int) ;

__attribute__((used)) static void
vdev_label_sync_top_done(zio_t *zio)
{
 uint64_t *good_writes = zio->io_private;

 if (*good_writes == 0)
  zio->io_error = SET_ERROR(EIO);

 kmem_free(good_writes, sizeof (uint64_t));
}
