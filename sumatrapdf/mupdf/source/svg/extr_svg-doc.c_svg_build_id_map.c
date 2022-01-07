
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idmap; } ;
typedef TYPE_1__ svg_document ;
typedef int fz_xml ;
typedef int fz_context ;


 int fz_tree_insert (int *,int ,char*,int *) ;
 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int *) ;
 int * fz_xml_next (int *) ;

__attribute__((used)) static void
svg_build_id_map(fz_context *ctx, svg_document *doc, fz_xml *root)
{
 fz_xml *node;

 char *id_att = fz_xml_att(root, "id");
 if (id_att)
  doc->idmap = fz_tree_insert(ctx, doc->idmap, id_att, root);

 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
  svg_build_id_map(ctx, doc, node);
}
