
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_document ;
struct TYPE_3__ {scalar_t__ count_pages; } ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 scalar_t__ pdf_count_pages_imp ;

pdf_document *pdf_document_from_fz_document(fz_context *ctx, fz_document *ptr)
{
 return (pdf_document *)((ptr && ptr->count_pages == pdf_count_pages_imp) ? ptr : ((void*)0));
}
