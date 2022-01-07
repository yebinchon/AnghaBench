
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {scalar_t__ cap; scalar_t__ len; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_resize_buffer (int *,TYPE_1__*,scalar_t__) ;

void
fz_trim_buffer(fz_context *ctx, fz_buffer *buf)
{
 if (buf->cap > buf->len+1)
  fz_resize_buffer(ctx, buf, buf->len);
}
