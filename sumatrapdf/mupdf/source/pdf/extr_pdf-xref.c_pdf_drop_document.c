
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int super; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int fz_drop_document (int *,int *) ;

void
pdf_drop_document(fz_context *ctx, pdf_document *doc)
{
 fz_drop_document(ctx, &doc->super);
}
