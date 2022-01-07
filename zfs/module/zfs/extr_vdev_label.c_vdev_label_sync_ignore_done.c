
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_private; } ;
typedef TYPE_1__ zio_t ;
typedef int uint64_t ;


 int kmem_free (int ,int) ;

__attribute__((used)) static void
vdev_label_sync_ignore_done(zio_t *zio)
{
 kmem_free(zio->io_private, sizeof (uint64_t));
}
