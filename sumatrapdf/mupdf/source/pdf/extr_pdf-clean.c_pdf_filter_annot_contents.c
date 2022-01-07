
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_text_filter_fn ;
typedef int pdf_page_contents_process_fn ;
typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int pdf_after_text_object_fn ;
typedef int fz_cookie ;
typedef int fz_context ;


 int AP ;
 int PDF_NAME (int ) ;
 int pdf_clean_stream_object (int *,int *,int *,int *,int *,int,int *,int *,void*,int,int) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int * pdf_dict_get_val (int *,int *,int) ;
 int pdf_dict_len (int *,int *) ;

void pdf_filter_annot_contents(fz_context *ctx, pdf_document *doc, pdf_annot *annot, fz_cookie *cookie,
 pdf_page_contents_process_fn *proc, pdf_text_filter_fn *text_filter, pdf_after_text_object_fn *after_text, void *arg, int sanitize, int ascii)
{
 pdf_obj *ap;
 int i, n;

 ap = pdf_dict_get(ctx, annot->obj, PDF_NAME(AP));
 if (ap == ((void*)0))
  return;

 n = pdf_dict_len(ctx, ap);
 for (i = 0; i < n; i++)
 {
  pdf_obj *v = pdf_dict_get_val(ctx, ap, i);

  if (v == ((void*)0))
   continue;

  pdf_clean_stream_object(ctx, doc, v, ((void*)0), cookie, 1, text_filter, after_text, arg, sanitize, ascii);
 }
}
