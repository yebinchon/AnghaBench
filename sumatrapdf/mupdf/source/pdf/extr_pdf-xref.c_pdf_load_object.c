
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_xref_entry ;
typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 TYPE_1__* pdf_cache_object (int *,int *,int) ;
 int * pdf_keep_obj (int *,int ) ;

pdf_obj *
pdf_load_object(fz_context *ctx, pdf_document *doc, int num)
{
 pdf_xref_entry *entry = pdf_cache_object(ctx, doc, num);
 return pdf_keep_obj(ctx, entry->obj);
}
