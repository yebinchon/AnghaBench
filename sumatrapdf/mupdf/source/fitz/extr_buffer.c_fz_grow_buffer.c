
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int cap; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_resize_buffer (int *,TYPE_1__*,size_t) ;

void
fz_grow_buffer(fz_context *ctx, fz_buffer *buf)
{
 size_t newsize = (buf->cap * 3) / 2;
 if (newsize == 0)
  newsize = 256;
 fz_resize_buffer(ctx, buf, newsize);
}
