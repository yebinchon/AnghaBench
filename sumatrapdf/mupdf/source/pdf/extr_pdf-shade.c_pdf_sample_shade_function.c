
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_function ;
struct TYPE_5__ {int use_function; } ;
typedef TYPE_1__ fz_shade ;
typedef int fz_context ;


 int pdf_sample_component_shade_function (int *,TYPE_1__*,int,int **,float,float) ;
 int pdf_sample_composite_shade_function (int *,TYPE_1__*,int *,float,float) ;

__attribute__((used)) static void
pdf_sample_shade_function(fz_context *ctx, fz_shade *shade, int funcs, pdf_function **func, float t0, float t1)
{
 shade->use_function = 1;
 if (funcs == 1)
  pdf_sample_composite_shade_function(ctx, shade, func[0], t0, t1);
 else
  pdf_sample_component_shade_function(ctx, shade, funcs, func, t0, t1);
}
