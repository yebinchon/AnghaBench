
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {size_t len; unsigned char* data; } ;
typedef TYPE_1__ fz_buffer ;



size_t
fz_buffer_extract(fz_context *ctx, fz_buffer *buf, unsigned char **datap)
{
 size_t len = buf ? buf->len : 0;
 *datap = (buf ? buf->data : ((void*)0));

 if (buf)
 {
  buf->data = ((void*)0);
  buf->len = 0;
 }
 return len;
}
