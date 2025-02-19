
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_9__ {scalar_t__ css_sum; TYPE_3__* accel; } ;
typedef TYPE_1__ epub_document ;
struct TYPE_10__ {size_t number; } ;
typedef TYPE_2__ epub_chapter ;
struct TYPE_11__ {int use_doc_css; scalar_t__ css_sum; size_t num_chapters; int* pages_in_chapter; } ;
typedef TYPE_3__ epub_accelerator ;


 int epub_get_laid_out_html (int *,TYPE_1__*,TYPE_2__*) ;
 int fz_drop_html (int *,int ) ;
 int fz_use_document_css (int *) ;
 int invalidate_accelerator (int *,TYPE_3__*) ;

__attribute__((used)) static int count_chapter_pages(fz_context *ctx, epub_document *doc, epub_chapter *ch)
{
 epub_accelerator *acc = doc->accel;
 int use_doc_css = fz_use_document_css(ctx);

 if (use_doc_css != acc->use_doc_css || doc->css_sum != acc->css_sum)
 {
  acc->use_doc_css = use_doc_css;
  acc->css_sum = doc->css_sum;
  invalidate_accelerator(ctx, acc);
 }

 if (ch->number < acc->num_chapters && acc->pages_in_chapter[ch->number] != -1)
  return acc->pages_in_chapter[ch->number];

 fz_drop_html(ctx, epub_get_laid_out_html(ctx, doc, ch));
 return acc->pages_in_chapter[ch->number];
}
