
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int obj; TYPE_4__** annot_tailp; TYPE_4__* annots; } ;
typedef TYPE_2__ pdf_page ;
typedef int pdf_obj ;
struct TYPE_10__ {int dirty; } ;
typedef TYPE_3__ pdf_document ;
struct TYPE_11__ {int obj; struct TYPE_11__* next; TYPE_1__* page; } ;
typedef TYPE_4__ pdf_annot ;
typedef int fz_context ;
struct TYPE_8__ {TYPE_3__* doc; } ;


 int Annots ;
 int PDF_NAME (int ) ;
 int pdf_array_delete (int *,int *,int) ;
 int pdf_array_find (int *,int *,int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_drop_annot (int *,TYPE_4__*) ;

void
pdf_delete_annot(fz_context *ctx, pdf_page *page, pdf_annot *annot)
{
 pdf_document *doc = annot->page->doc;
 pdf_annot **annotptr;
 pdf_obj *annot_arr;
 int i;

 if (annot == ((void*)0))
  return;


 for (annotptr = &page->annots; *annotptr; annotptr = &(*annotptr)->next)
 {
  if (*annotptr == annot)
   break;
 }


 if (*annotptr == ((void*)0))
  return;

 *annotptr = annot->next;


 if (*annotptr == ((void*)0))
  page->annot_tailp = annotptr;


 annot_arr = pdf_dict_get(ctx, page->obj, PDF_NAME(Annots));
 i = pdf_array_find(ctx, annot_arr, annot->obj);
 if (i >= 0)
  pdf_array_delete(ctx, annot_arr, i);





 pdf_drop_annot(ctx, annot);

 doc->dirty = 1;
}
