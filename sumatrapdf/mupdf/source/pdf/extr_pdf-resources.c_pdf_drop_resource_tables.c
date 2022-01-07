
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int images; int fonts; } ;
struct TYPE_5__ {TYPE_1__ resources; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;


 int fz_drop_hash_table (int *,int ) ;

void
pdf_drop_resource_tables(fz_context *ctx, pdf_document *doc)
{
 if (doc)
 {
  fz_drop_hash_table(ctx, doc->resources.fonts);
  fz_drop_hash_table(ctx, doc->resources.images);
 }
}
