
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ cap; int* data; scalar_t__ unused_bits; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_grow_buffer (int *,TYPE_1__*) ;

void
fz_append_byte(fz_context *ctx, fz_buffer *buf, int val)
{
 if (buf->len + 1 > buf->cap)
  fz_grow_buffer(ctx, buf);
 buf->data[buf->len++] = val;
 buf->unused_bits = 0;
}
