
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int super; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 scalar_t__ fz_keep_document (int *,int *) ;

pdf_document *
pdf_keep_document(fz_context *ctx, pdf_document *doc)
{
 return (pdf_document *)fz_keep_document(ctx, &doc->super);
}
