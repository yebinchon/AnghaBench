
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ cap; scalar_t__ data; scalar_t__ unused_bits; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_ensure_buffer (int *,TYPE_1__*,scalar_t__) ;
 int memcpy (scalar_t__,void const*,size_t) ;

void
fz_append_data(fz_context *ctx, fz_buffer *buf, const void *data, size_t len)
{
 if (buf->len + len > buf->cap)
  fz_ensure_buffer(ctx, buf, buf->len + len);
 memcpy(buf->data + buf->len, data, len);
 buf->len += len;
 buf->unused_bits = 0;
}
