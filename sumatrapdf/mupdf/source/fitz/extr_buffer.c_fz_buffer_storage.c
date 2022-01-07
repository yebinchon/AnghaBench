
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {unsigned char* data; size_t len; } ;
typedef TYPE_1__ fz_buffer ;



size_t
fz_buffer_storage(fz_context *ctx, fz_buffer *buf, unsigned char **datap)
{
 if (datap)
  *datap = (buf ? buf->data : ((void*)0));
 return (buf ? buf->len : 0);
}
