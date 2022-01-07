
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zt_bufsize; struct TYPE_6__* zt_next; int zt_orig_size; int zt_orig_abd; int (* zt_transform ) (TYPE_2__*,int ,int ) ;} ;
typedef TYPE_1__ zio_transform_t ;
struct TYPE_7__ {TYPE_1__* io_transform_stack; int io_size; int io_abd; } ;
typedef TYPE_2__ zio_t ;


 int abd_free (int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int stub1 (TYPE_2__*,int ,int ) ;

void
zio_pop_transforms(zio_t *zio)
{
 zio_transform_t *zt;

 while ((zt = zio->io_transform_stack) != ((void*)0)) {
  if (zt->zt_transform != ((void*)0))
   zt->zt_transform(zio,
       zt->zt_orig_abd, zt->zt_orig_size);

  if (zt->zt_bufsize != 0)
   abd_free(zio->io_abd);

  zio->io_abd = zt->zt_orig_abd;
  zio->io_size = zt->zt_orig_size;
  zio->io_transform_stack = zt->zt_next;

  kmem_free(zt, sizeof (zio_transform_t));
 }
}
