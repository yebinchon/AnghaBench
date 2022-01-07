
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_size; int io_abd; } ;
typedef TYPE_1__ zio_t ;


 int abd_iterate_func (int ,int ,int ,int ,int *) ;
 int init_rand ;

void
init_zio_abd(zio_t *zio)
{
 abd_iterate_func(zio->io_abd, 0, zio->io_size, init_rand, ((void*)0));
}
