
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ stroke_is_set; scalar_t__ fill_is_set; } ;
typedef TYPE_1__ svg_state ;
typedef int svg_document ;
typedef int fz_path ;
typedef int fz_device ;
typedef int fz_context ;


 int svg_fill (int *,int *,int *,int *,TYPE_1__*) ;
 int svg_stroke (int *,int *,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void svg_draw_path(fz_context *ctx, fz_device *dev, svg_document *doc, fz_path *path, svg_state *state)
{
 if (state->fill_is_set)
  svg_fill(ctx, dev, doc, path, state);
 if (state->stroke_is_set)
  svg_stroke(ctx, dev, doc, path, state);
}
