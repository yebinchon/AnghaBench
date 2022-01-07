
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int len; int cap; scalar_t__ unused_bits; int data; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_ensure_buffer (int *,TYPE_1__*,int) ;
 int fz_runetochar (char*,int) ;
 int memcpy (int ,char*,int) ;

void
fz_append_rune(fz_context *ctx, fz_buffer *buf, int c)
{
 char data[10];
 int len = fz_runetochar(data, c);
 if (buf->len + len > buf->cap)
  fz_ensure_buffer(ctx, buf, buf->len + len);
 memcpy(buf->data + buf->len, data, len);
 buf->len += len;
 buf->unused_bits = 0;
}
