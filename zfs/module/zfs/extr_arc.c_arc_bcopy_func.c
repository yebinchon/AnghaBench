
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zio_t ;
typedef int zbookmark_phys_t ;
typedef int blkptr_t ;
struct TYPE_5__ {int b_data; } ;
typedef TYPE_1__ arc_buf_t ;


 int arc_buf_destroy (TYPE_1__*,void*) ;
 int arc_buf_size (TYPE_1__*) ;
 int bcopy (int ,void*,int ) ;

void
arc_bcopy_func(zio_t *zio, const zbookmark_phys_t *zb, const blkptr_t *bp,
    arc_buf_t *buf, void *arg)
{
 if (buf == ((void*)0))
  return;

 bcopy(buf->b_data, arg, arc_buf_size(buf));
 arc_buf_destroy(buf, arg);
}
