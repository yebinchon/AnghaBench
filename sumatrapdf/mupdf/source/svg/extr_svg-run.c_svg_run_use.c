
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ use_depth; int transform; int fontsize; int viewbox_h; int viewbox_w; } ;
typedef TYPE_1__ svg_state ;
struct TYPE_12__ {int idmap; } ;
typedef TYPE_2__ svg_document ;
typedef int fz_xml ;
typedef int fz_device ;
typedef int fz_context ;


 scalar_t__ MAX_USE_DEPTH ;
 int fz_concat (int ,int ) ;
 int fz_translate (float,float) ;
 int * fz_tree_lookup (int *,int ,char*) ;
 int fz_warn (int *,char*) ;
 char* fz_xml_att (int *,char*) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int svg_parse_common (int *,TYPE_2__*,int *,TYPE_1__*) ;
 float svg_parse_length (char*,int ,int ) ;
 int svg_run_element (int *,int *,TYPE_2__*,int *,TYPE_1__*) ;
 int svg_run_use_symbol (int *,int *,TYPE_2__*,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void
svg_run_use(fz_context *ctx, fz_device *dev, svg_document *doc, fz_xml *root, const svg_state *inherit_state)
{
 svg_state local_state = *inherit_state;

 char *xlink_href_att = fz_xml_att(root, "xlink:href");
 char *x_att = fz_xml_att(root, "x");
 char *y_att = fz_xml_att(root, "y");

 float x = 0;
 float y = 0;

 if (++local_state.use_depth > MAX_USE_DEPTH)
 {
  fz_warn(ctx, "svg: too much recursion");
  return;
 }

 svg_parse_common(ctx, doc, root, &local_state);
 if (x_att) x = svg_parse_length(x_att, local_state.viewbox_w, local_state.fontsize);
 if (y_att) y = svg_parse_length(y_att, local_state.viewbox_h, local_state.fontsize);

 local_state.transform = fz_concat(fz_translate(x, y), local_state.transform);

 if (xlink_href_att && xlink_href_att[0] == '#')
 {
  fz_xml *linked = fz_tree_lookup(ctx, doc->idmap, xlink_href_att + 1);
  if (linked)
  {
   if (fz_xml_is_tag(linked, "symbol"))
    svg_run_use_symbol(ctx, dev, doc, root, linked, &local_state);
   else
    svg_run_element(ctx, dev, doc, linked, &local_state);
   return;
  }
 }

 fz_warn(ctx, "svg: cannot find linked symbol");
}
