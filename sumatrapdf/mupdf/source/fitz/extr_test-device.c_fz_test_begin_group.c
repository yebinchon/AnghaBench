
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ passthrough; } ;
typedef TYPE_1__ fz_test_device ;
typedef int fz_rect ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_begin_group (int *,scalar_t__,int ,int *,int,int,int,float) ;

__attribute__((used)) static void
fz_test_begin_group(fz_context *ctx, fz_device *dev_, fz_rect rect, fz_colorspace *cs, int isolated, int knockout, int blendmode, float alpha)
{
 fz_test_device *dev = (fz_test_device*)dev_;

 if (dev->passthrough)
  fz_begin_group(ctx, dev->passthrough, rect, cs, isolated, knockout, blendmode, alpha);
}
