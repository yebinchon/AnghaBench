
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_error; TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_5__ {int rc_tried; scalar_t__ rc_skipped; int rc_error; } ;
typedef TYPE_2__ raidz_col_t ;



__attribute__((used)) static void
vdev_raidz_child_done(zio_t *zio)
{
 raidz_col_t *rc = zio->io_private;

 rc->rc_error = zio->io_error;
 rc->rc_tried = 1;
 rc->rc_skipped = 0;
}
