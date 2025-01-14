
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float viewport_w; float viewport_h; float viewbox_w; float viewbox_h; int viewbox_size; void* transform; } ;
typedef TYPE_1__ svg_state ;
typedef int svg_document ;
typedef int fz_xml ;
typedef int fz_context ;


 void* fz_concat (int ,void*) ;
 float fz_min (float,float) ;
 int fz_scale (float,float) ;
 int fz_translate (float,float) ;
 char* fz_xml_att (int *,char*) ;
 int sqrtf (int) ;
 int svg_lex_viewbox (char*,float*,float*,float*,float*) ;
 int svg_parse_preserve_aspect_ratio (char*,int*,int*) ;

void
svg_parse_viewbox(fz_context *ctx, svg_document *doc, fz_xml *node, svg_state *state)
{
 char *viewbox_att = fz_xml_att(node, "viewBox");
 char *preserve_att = fz_xml_att(node, "preserveAspectRatio");
 if (viewbox_att)
 {

  float min_x, min_y, box_w, box_h, sx, sy;
  int align_x=1, align_y=1, preserve=1;
  float pad_x=0, pad_y=0;

  svg_lex_viewbox(viewbox_att, &min_x, &min_y, &box_w, &box_h);
  sx = state->viewport_w / box_w;
  sy = state->viewport_h / box_h;

  if (preserve_att)
   preserve = svg_parse_preserve_aspect_ratio(preserve_att, &align_x, &align_y);
  if (preserve)
  {
   sx = sy = fz_min(sx, sy);
   if (align_x == 1) pad_x = (box_w * sx - state->viewport_w) / 2;
   if (align_x == 2) pad_x = (box_w * sx - state->viewport_w);
   if (align_y == 1) pad_y = (box_h * sy - state->viewport_h) / 2;
   if (align_y == 2) pad_y = (box_h * sy - state->viewport_h);
   state->transform = fz_concat(fz_translate(-pad_x, -pad_y), state->transform);
  }
  state->transform = fz_concat(fz_scale(sx, sy), state->transform);
  state->transform = fz_concat(fz_translate(-min_x, -min_y), state->transform);
  state->viewbox_w = box_w;
  state->viewbox_h = box_h;
  state->viewbox_size = sqrtf(box_w*box_w + box_h*box_h) / sqrtf(2);
 }
}
