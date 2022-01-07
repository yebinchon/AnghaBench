
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {size_t len; size_t cap; scalar_t__ unused_bits; scalar_t__ data; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_ensure_buffer (int *,TYPE_1__*,size_t) ;
 int memcpy (scalar_t__,char const*,size_t) ;
 size_t strlen (char const*) ;

void
fz_append_string(fz_context *ctx, fz_buffer *buf, const char *data)
{
 size_t len = strlen(data);
 if (buf->len + len > buf->cap)
  fz_ensure_buffer(ctx, buf, buf->len + len);
 memcpy(buf->data + buf->len, data, len);
 buf->len += len;
 buf->unused_bits = 0;
}
