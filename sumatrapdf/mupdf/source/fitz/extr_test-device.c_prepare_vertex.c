
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shadearg {int color_params; TYPE_1__* shade; int * dev; } ;
typedef int fz_vertex ;
typedef int fz_test_device ;
struct TYPE_2__ {int colorspace; int use_function; } ;
typedef TYPE_1__ fz_shade ;
typedef int fz_context ;


 int fz_test_color (int *,int *,int ,float const*,int ) ;

__attribute__((used)) static void
prepare_vertex(fz_context *ctx, void *arg_, fz_vertex *v, const float *color)
{
 struct shadearg *arg = arg_;
 fz_test_device *dev = arg->dev;
 fz_shade *shade = arg->shade;
 if (!shade->use_function)
  fz_test_color(ctx, dev, shade->colorspace, color, arg->color_params);
}
