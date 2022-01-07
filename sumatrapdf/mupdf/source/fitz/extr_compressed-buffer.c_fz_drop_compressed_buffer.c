
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_7__ {int globals; } ;
struct TYPE_8__ {TYPE_1__ jbig2; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_10__ {int buffer; TYPE_3__ params; } ;
typedef TYPE_4__ fz_compressed_buffer ;


 scalar_t__ FZ_IMAGE_JBIG2 ;
 int fz_drop_buffer (int *,int ) ;
 int fz_drop_jbig2_globals (int *,int ) ;
 int fz_free (int *,TYPE_4__*) ;

void
fz_drop_compressed_buffer(fz_context *ctx, fz_compressed_buffer *buf)
{
 if (buf)
 {
  if (buf->params.type == FZ_IMAGE_JBIG2)
   fz_drop_jbig2_globals(ctx, buf->params.u.jbig2.globals);
  fz_drop_buffer(ctx, buf->buffer);
  fz_free(ctx, buf);
 }
}
