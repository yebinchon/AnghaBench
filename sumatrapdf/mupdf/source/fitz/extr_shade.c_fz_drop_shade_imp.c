
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_storable ;
struct TYPE_5__ {TYPE_3__* fn_vals; } ;
struct TYPE_6__ {TYPE_1__ f; } ;
struct TYPE_7__ {scalar_t__ type; int buffer; TYPE_2__ u; int colorspace; } ;
typedef TYPE_3__ fz_shade ;
typedef int fz_context ;


 scalar_t__ FZ_FUNCTION_BASED ;
 int fz_drop_colorspace (int *,int ) ;
 int fz_drop_compressed_buffer (int *,int ) ;
 int fz_free (int *,TYPE_3__*) ;

void
fz_drop_shade_imp(fz_context *ctx, fz_storable *shade_)
{
 fz_shade *shade = (fz_shade *)shade_;

 fz_drop_colorspace(ctx, shade->colorspace);
 if (shade->type == FZ_FUNCTION_BASED)
  fz_free(ctx, shade->u.f.fn_vals);
 fz_drop_compressed_buffer(ctx, shade->buffer);
 fz_free(ctx, shade);
}
