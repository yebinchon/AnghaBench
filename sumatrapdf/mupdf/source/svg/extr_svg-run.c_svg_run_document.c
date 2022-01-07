
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int viewport_w; int viewport_h; int viewbox_w; int viewbox_h; int viewbox_size; int fontsize; int opacity; int fill_is_set; int fill_opacity; int stroke_opacity; scalar_t__* stroke_color; scalar_t__ stroke_is_set; scalar_t__* fill_color; scalar_t__ fill_rule; scalar_t__ use_depth; int stroke; int transform; } ;
typedef TYPE_1__ svg_state ;
typedef int svg_document ;
typedef int fz_xml ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int DEF_HEIGHT ;
 int DEF_WIDTH ;
 int fz_default_stroke_state ;
 int sqrtf (int) ;
 int svg_parse_document_bounds (int *,int *,int *) ;
 int svg_run_svg (int *,int *,int *,int *,TYPE_1__*) ;

void
svg_run_document(fz_context *ctx, svg_document *doc, fz_xml *root, fz_device *dev, fz_matrix ctm)
{
 svg_state state;

 svg_parse_document_bounds(ctx, doc, root);


 state.transform = ctm;
 state.stroke = fz_default_stroke_state;
 state.use_depth = 0;

 state.viewport_w = DEF_WIDTH;
 state.viewport_h = DEF_HEIGHT;

 state.viewbox_w = DEF_WIDTH;
 state.viewbox_h = DEF_HEIGHT;
 state.viewbox_size = sqrtf(DEF_WIDTH*DEF_WIDTH + DEF_HEIGHT*DEF_HEIGHT) / sqrtf(2);

 state.fontsize = 12;

 state.opacity = 1;

 state.fill_rule = 0;

 state.fill_is_set = 1;
 state.fill_color[0] = 0;
 state.fill_color[1] = 0;
 state.fill_color[2] = 0;
 state.fill_opacity = 1;

 state.stroke_is_set = 0;
 state.stroke_color[0] = 0;
 state.stroke_color[1] = 0;
 state.stroke_color[2] = 0;
 state.stroke_opacity = 1;

 svg_run_svg(ctx, dev, doc, root, &state);
}
