
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xml; int idmap; } ;
typedef TYPE_1__ svg_document ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_drop_tree (int *,int ,int *) ;
 int fz_drop_xml (int *,int ) ;

__attribute__((used)) static void
svg_drop_document(fz_context *ctx, fz_document *doc_)
{
 svg_document *doc = (svg_document*)doc_;
 fz_drop_tree(ctx, doc->idmap, ((void*)0));
 fz_drop_xml(ctx, doc->xml);
}
