
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct shadearg {int color_params; TYPE_2__* shade; TYPE_1__* dev; } ;
struct TYPE_7__ {int resolved; int options; int* is_color; int * passthrough; } ;
typedef TYPE_1__ fz_test_device ;
struct TYPE_8__ {int * function; int colorspace; scalar_t__ use_function; } ;
typedef TYPE_2__ fz_shade ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_color_params ;


 scalar_t__ FZ_COLORSPACE_GRAY ;
 int FZ_ERROR_ABORT ;
 int FZ_TEST_OPT_SHADINGS ;
 scalar_t__ fz_colorspace_type (int *,int ) ;
 int fz_device_current_scissor (int *,int *) ;
 int fz_fill_shade (int *,int *,TYPE_2__*,int ,float,int ) ;
 int fz_process_shade (int *,TYPE_2__*,int ,int ,int ,int *,struct shadearg*) ;
 int fz_test_color (int *,TYPE_1__*,int ,int ,int ) ;
 int fz_throw (int *,int ,char*) ;
 int prepare_vertex ;

__attribute__((used)) static void
fz_test_fill_shade(fz_context *ctx, fz_device *dev_, fz_shade *shade, fz_matrix ctm, float alpha, fz_color_params color_params)
{
 fz_test_device *dev = (fz_test_device*)dev_;

 if (dev->resolved == 0)
 {
  if ((dev->options & FZ_TEST_OPT_SHADINGS) == 0)
  {
   if (fz_colorspace_type(ctx, shade->colorspace) != FZ_COLORSPACE_GRAY)
   {

    if (*dev->is_color == 0)
     *dev->is_color = 1;
    dev->resolved = 1;
    if (dev->passthrough == ((void*)0))
     fz_throw(ctx, FZ_ERROR_ABORT, "Page found as color; stopping interpretation");
   }
  }
  else
  {
   if (shade->use_function)
   {
    int i;
    for (i = 0; i < 256; i++)
     fz_test_color(ctx, dev, shade->colorspace, shade->function[i], color_params);
   }
   else
   {
    struct shadearg arg;
    arg.dev = dev;
    arg.shade = shade;
    arg.color_params = color_params;
    fz_process_shade(ctx, shade, ctm, fz_device_current_scissor(ctx, dev_), prepare_vertex, ((void*)0), &arg);
   }
  }
 }
 if (dev->passthrough)
  fz_fill_shade(ctx, dev->passthrough, shade, ctm, alpha, color_params);
}
