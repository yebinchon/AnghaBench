
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {struct TYPE_5__* data; int shared; int refs; } ;
typedef TYPE_1__ fz_buffer ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_buffer(fz_context *ctx, fz_buffer *buf)
{
 if (fz_drop_imp(ctx, buf, &buf->refs))
 {
  if (!buf->shared)
   fz_free(ctx, buf->data);
  fz_free(ctx, buf);
 }
}
