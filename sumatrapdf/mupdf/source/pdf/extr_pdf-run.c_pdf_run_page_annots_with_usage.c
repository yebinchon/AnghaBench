
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* annots; } ;
typedef TYPE_1__ pdf_page ;
typedef int pdf_document ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_2__ pdf_annot ;
typedef int fz_matrix ;
typedef int fz_device ;
struct TYPE_11__ {int progress_max; int progress; scalar_t__ abort; } ;
typedef TYPE_3__ fz_cookie ;
typedef int fz_context ;


 int pdf_run_annot_with_usage (int *,int *,TYPE_1__*,TYPE_2__*,int *,int ,char const*,TYPE_3__*) ;

__attribute__((used)) static void
pdf_run_page_annots_with_usage(fz_context *ctx, pdf_document *doc, pdf_page *page, fz_device *dev, fz_matrix ctm, const char *usage, fz_cookie *cookie)
{
 pdf_annot *annot;

 if (cookie && cookie->progress_max != -1)
 {
  int count = 1;
  for (annot = page->annots; annot; annot = annot->next)
   count++;
  cookie->progress_max += count;
 }

 for (annot = page->annots; annot; annot = annot->next)
 {

  if (cookie)
  {
   if (cookie->abort)
    break;
   cookie->progress++;
  }

  pdf_run_annot_with_usage(ctx, doc, page, annot, dev, ctm, usage, cookie);
 }
}
