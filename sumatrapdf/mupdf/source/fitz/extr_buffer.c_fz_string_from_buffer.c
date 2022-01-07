
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_terminate_buffer (int *,TYPE_1__*) ;

const char *
fz_string_from_buffer(fz_context *ctx, fz_buffer *buf)
{
 if (!buf)
  return "";
 fz_terminate_buffer(ctx, buf);
 return (const char *)buf->data;
}
