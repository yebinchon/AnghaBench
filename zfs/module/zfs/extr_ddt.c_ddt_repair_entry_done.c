
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * io_private; } ;
typedef TYPE_1__ zio_t ;
typedef int ddt_entry_t ;


 int ddt_free (int *) ;

__attribute__((used)) static void
ddt_repair_entry_done(zio_t *zio)
{
 ddt_entry_t *rdde = zio->io_private;

 ddt_free(rdde);
}
