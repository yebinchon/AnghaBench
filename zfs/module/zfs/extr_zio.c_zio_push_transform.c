
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* zt_next; int * zt_transform; void* zt_bufsize; void* zt_orig_size; int * zt_orig_abd; } ;
typedef TYPE_1__ zio_transform_t ;
typedef int zio_transform_func_t ;
struct TYPE_6__ {void* io_size; int * io_abd; TYPE_1__* io_transform_stack; } ;
typedef TYPE_2__ zio_t ;
typedef void* uint64_t ;
typedef int abd_t ;


 int KM_SLEEP ;
 TYPE_1__* kmem_alloc (int,int ) ;

void
zio_push_transform(zio_t *zio, abd_t *data, uint64_t size, uint64_t bufsize,
    zio_transform_func_t *transform)
{
 zio_transform_t *zt = kmem_alloc(sizeof (zio_transform_t), KM_SLEEP);

 zt->zt_orig_abd = zio->io_abd;
 zt->zt_orig_size = zio->io_size;
 zt->zt_bufsize = bufsize;
 zt->zt_transform = transform;

 zt->zt_next = zio->io_transform_stack;
 zio->io_transform_stack = zt;

 zio->io_abd = data;
 zio->io_size = size;
}
