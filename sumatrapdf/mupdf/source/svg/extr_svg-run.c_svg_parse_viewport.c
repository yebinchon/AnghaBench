
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fontsize; int viewbox_h; void* viewport_h; int viewbox_w; void* viewport_w; } ;
typedef TYPE_1__ svg_state ;
typedef int svg_document ;
typedef int fz_xml ;
typedef int fz_context ;


 char* fz_xml_att (int *,char*) ;
 void* svg_parse_length (char*,int ,int ) ;

void
svg_parse_viewport(fz_context *ctx, svg_document *doc, fz_xml *node, svg_state *state)
{
 char *w_att = fz_xml_att(node, "width");
 char *h_att = fz_xml_att(node, "height");

 if (w_att)
  state->viewport_w = svg_parse_length(w_att, state->viewbox_w, state->fontsize);
 if (h_att)
  state->viewport_h = svg_parse_length(h_att, state->viewbox_h, state->fontsize);

}
