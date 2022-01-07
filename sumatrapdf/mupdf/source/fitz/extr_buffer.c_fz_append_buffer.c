
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {scalar_t__ cap; scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ fz_buffer ;


 scalar_t__ fz_realloc (int *,scalar_t__,scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;

void
fz_append_buffer(fz_context *ctx, fz_buffer *buf, fz_buffer *extra)
{
 if (buf->cap - buf->len < extra->len)
 {
  buf->data = fz_realloc(ctx, buf->data, buf->len + extra->len);
  buf->cap = buf->len + extra->len;
 }

 memcpy(buf->data + buf->len, extra->data, extra->len);
 buf->len += extra->len;
}
