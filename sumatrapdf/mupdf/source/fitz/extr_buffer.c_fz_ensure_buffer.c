
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {size_t cap; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_resize_buffer (int *,TYPE_1__*,size_t) ;

__attribute__((used)) static void
fz_ensure_buffer(fz_context *ctx, fz_buffer *buf, size_t min)
{
 size_t newsize = buf->cap;
 if (newsize < 16)
  newsize = 16;
 while (newsize < min)
 {
  newsize = (newsize * 3) / 2;
 }
 fz_resize_buffer(ctx, buf, newsize);
}
