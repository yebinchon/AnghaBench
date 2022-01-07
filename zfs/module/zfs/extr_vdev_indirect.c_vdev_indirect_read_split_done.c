
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ io_error; TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_5__ {int * ic_data; } ;
typedef TYPE_2__ indirect_child_t ;


 int abd_free (int *) ;

__attribute__((used)) static void
vdev_indirect_read_split_done(zio_t *zio)
{
 indirect_child_t *ic = zio->io_private;

 if (zio->io_error != 0) {




  abd_free(ic->ic_data);
  ic->ic_data = ((void*)0);
 }
}
