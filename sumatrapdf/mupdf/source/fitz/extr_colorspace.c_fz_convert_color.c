
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_5__ {int (* convert ) (int *,TYPE_1__*,float const*,float*) ;} ;
typedef TYPE_1__ fz_color_converter ;


 int fz_drop_color_converter (int *,TYPE_1__*) ;
 int fz_find_color_converter (int *,TYPE_1__*,int *,int *,int *,int ) ;
 int stub1 (int *,TYPE_1__*,float const*,float*) ;

void
fz_convert_color(fz_context *ctx, fz_colorspace *ss, const float *sv, fz_colorspace *ds, float *dv, fz_colorspace *is, fz_color_params params)
{
 fz_color_converter cc;
 fz_find_color_converter(ctx, &cc, ss, ds, is, params);
 cc.convert(ctx, &cc, sv, dv);
 fz_drop_color_converter(ctx, &cc);
}
