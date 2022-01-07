
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ passthrough; } ;
typedef TYPE_1__ fz_test_device ;
typedef int fz_stroke_state ;
typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_clip_stroke_path (int *,scalar_t__,int const*,int const*,int ,int ) ;

__attribute__((used)) static void
fz_test_clip_stroke_path(fz_context *ctx, fz_device *dev_, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
 fz_test_device *dev = (fz_test_device*)dev_;

 if (dev->passthrough)
  fz_clip_stroke_path(ctx, dev->passthrough, path, stroke, ctm, scissor);
}
