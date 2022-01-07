
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int len; int cap; scalar_t__* data; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_grow_buffer (int *,TYPE_1__*) ;

void
fz_terminate_buffer(fz_context *ctx, fz_buffer *buf)
{

 if (buf->len + 1 > buf->cap)
  fz_grow_buffer(ctx, buf);
 buf->data[buf->len] = 0;
}
