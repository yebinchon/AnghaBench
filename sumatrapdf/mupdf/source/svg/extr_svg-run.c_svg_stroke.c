
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float opacity; float stroke_opacity; int stroke_color; int transform; int stroke; } ;
typedef TYPE_1__ svg_state ;
typedef int svg_document ;
typedef int fz_path ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_default_color_params ;
 int fz_device_rgb (int *) ;
 int fz_stroke_path (int *,int *,int *,int *,int ,int ,int ,float,int ) ;

__attribute__((used)) static void svg_stroke(fz_context *ctx, fz_device *dev, svg_document *doc, fz_path *path, svg_state *state)
{
 float opacity = state->opacity * state->stroke_opacity;
 if (path)
  fz_stroke_path(ctx, dev, path, &state->stroke, state->transform, fz_device_rgb(ctx), state->stroke_color, opacity, fz_default_color_params);
}
