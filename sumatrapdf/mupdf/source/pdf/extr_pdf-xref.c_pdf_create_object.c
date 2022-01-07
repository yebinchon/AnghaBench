
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float type; int ofs; int num; int * obj; int * stm_buf; scalar_t__ stm_ofs; scalar_t__ gen; } ;
typedef TYPE_1__ pdf_xref_entry ;
typedef int pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int PDF_MAX_OBJECT_NUMBER ;
 int fz_throw (int *,int ,char*) ;
 TYPE_1__* pdf_get_incremental_xref_entry (int *,int *,int) ;
 int pdf_xref_len (int *,int *) ;

int
pdf_create_object(fz_context *ctx, pdf_document *doc)
{

 pdf_xref_entry *entry;
 int num = pdf_xref_len(ctx, doc);

 if (num > PDF_MAX_OBJECT_NUMBER)
  fz_throw(ctx, FZ_ERROR_GENERIC, "too many objects stored in pdf");

 entry = pdf_get_incremental_xref_entry(ctx, doc, num);
 entry->type = 'f';
 entry->ofs = -1;
 entry->gen = 0;
 entry->num = num;
 entry->stm_ofs = 0;
 entry->stm_buf = ((void*)0);
 entry->obj = ((void*)0);
 return num;
}
