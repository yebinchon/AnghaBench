
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svg_state ;
typedef int svg_document ;
typedef int fz_xml ;
typedef int fz_device ;
typedef int fz_context ;


 int * fz_xml_down (int *) ;
 int * fz_xml_next (int *) ;
 int svg_parse_common (int *,int *,int *,int *) ;
 int svg_run_element (int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
svg_run_g(fz_context *ctx, fz_device *dev, svg_document *doc, fz_xml *root, const svg_state *inherit_state)
{
 svg_state local_state = *inherit_state;
 fz_xml *node;

 svg_parse_common(ctx, doc, root, &local_state);

 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
  svg_run_element(ctx, dev, doc, node, &local_state);
}
