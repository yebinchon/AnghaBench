
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_abd; } ;
typedef TYPE_1__ zio_t ;


 int abd_put (int ) ;

__attribute__((used)) static void
zio_gang_issue_func_done(zio_t *zio)
{
 abd_put(zio->io_abd);
}
