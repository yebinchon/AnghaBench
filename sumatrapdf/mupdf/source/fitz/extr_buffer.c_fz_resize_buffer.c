
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {size_t cap; size_t len; int data; scalar_t__ shared; } ;
typedef TYPE_1__ fz_buffer ;


 int FZ_ERROR_GENERIC ;
 int fz_realloc (int *,int ,size_t) ;
 int fz_throw (int *,int ,char*) ;

void
fz_resize_buffer(fz_context *ctx, fz_buffer *buf, size_t size)
{
 if (buf->shared)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot resize a buffer with shared storage");
 buf->data = fz_realloc(ctx, buf->data, size);
 buf->cap = size;
 if (buf->len > buf->cap)
  buf->len = buf->cap;
}
