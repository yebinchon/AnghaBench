
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int viewbox_h; int viewport_h; int viewbox_w; int viewport_w; } ;
typedef TYPE_1__ svg_state ;
typedef int svg_document ;
typedef int fz_xml ;
typedef int fz_device ;
typedef int fz_context ;


 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int *) ;
 int * fz_xml_next (int *) ;
 int svg_lex_viewbox (char*,float*,float*,int *,int *) ;
 int svg_parse_common (int *,int *,int *,TYPE_1__*) ;
 int svg_parse_viewbox (int *,int *,int *,TYPE_1__*) ;
 int svg_parse_viewport (int *,int *,int *,TYPE_1__*) ;
 int svg_run_element (int *,int *,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void
svg_run_svg(fz_context *ctx, fz_device *dev, svg_document *doc, fz_xml *root, const svg_state *inherit_state)
{
 svg_state local_state = *inherit_state;
 fz_xml *node;

 char *w_att = fz_xml_att(root, "width");
 char *h_att = fz_xml_att(root, "height");
 char *viewbox_att = fz_xml_att(root, "viewBox");


 if (viewbox_att && (!w_att || !h_att))
 {
  float x, y;
  svg_lex_viewbox(viewbox_att, &x, &y, &local_state.viewbox_w, &local_state.viewbox_h);
  if (!w_att) local_state.viewport_w = local_state.viewbox_w;
  if (!h_att) local_state.viewport_h = local_state.viewbox_h;
 }

 svg_parse_viewport(ctx, doc, root, &local_state);
 svg_parse_viewbox(ctx, doc, root, &local_state);
 svg_parse_common(ctx, doc, root, &local_state);

 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
  svg_run_element(ctx, dev, doc, node, &local_state);
}
