
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int super; } ;
typedef TYPE_1__ pdf_page ;
struct TYPE_8__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
typedef TYPE_2__ fz_irect ;
struct TYPE_10__ {int page; int chapter; } ;
struct TYPE_9__ {scalar_t__ h; scalar_t__ w; } ;


 int FZ_SEPARATION_COMPOSITE ;
 scalar_t__ PDF_ANNOT_WIDGET ;
 int ctx ;
 scalar_t__ currenticc ;
 TYPE_6__ currentpage ;
 scalar_t__ currentseparations ;
 int doc ;
 int draw_page_bounds ;
 int fz_bound_page (int ,int *) ;
 int fz_count_separations (int ,int *) ;
 int fz_disable_icc (int ) ;
 scalar_t__ fz_document_output_intent (int ,int ) ;
 int fz_drop_link (int ,int *) ;
 int fz_drop_page (int ,int *) ;
 int fz_drop_separations (int ,int *) ;
 int fz_drop_stext_page (int ,int *) ;
 int fz_enable_icc (int ) ;
 TYPE_2__ fz_irect_from_rect (int ) ;
 int * fz_load_chapter_page (int ,int ,int ,int ) ;
 int * fz_load_links (int ,int *) ;
 int * fz_new_separations (int ,int ) ;
 int * fz_new_stext_page_from_page (int ,int *,int *) ;
 int * fz_page_separations (int ,int *) ;
 scalar_t__ fz_page_uses_overprint (int ,int *) ;
 int fz_set_separation_behavior (int ,int *,int,int ) ;
 int * fzpage ;
 int * links ;
 TYPE_1__* page ;
 int page_bounds ;
 TYPE_3__ page_tex ;
 int * page_text ;
 scalar_t__ pdf ;
 int pdf_annot_event_blur (int ,int *) ;
 scalar_t__ pdf_annot_type (int ,int *) ;
 int * selected_annot ;
 int * seps ;
 int transform_page () ;

void load_page(void)
{
 fz_irect area;


 if (selected_annot && pdf_annot_type(ctx, selected_annot) == PDF_ANNOT_WIDGET)
  pdf_annot_event_blur(ctx, selected_annot);
 selected_annot = ((void*)0);

 fz_drop_stext_page(ctx, page_text);
 page_text = ((void*)0);
 fz_drop_separations(ctx, seps);
 seps = ((void*)0);
 fz_drop_link(ctx, links);
 links = ((void*)0);
 fz_drop_page(ctx, fzpage);
 fzpage = ((void*)0);

 fzpage = fz_load_chapter_page(ctx, doc, currentpage.chapter, currentpage.page);
 if (pdf)
  page = (pdf_page*)fzpage;

 links = fz_load_links(ctx, fzpage);
 page_text = fz_new_stext_page_from_page(ctx, fzpage, ((void*)0));

 if (currenticc)
  fz_enable_icc(ctx);
 else
  fz_disable_icc(ctx);

 if (currentseparations)
 {
  seps = fz_page_separations(ctx, &page->super);
  if (seps)
  {
   int i, n = fz_count_separations(ctx, seps);
   for (i = 0; i < n; i++)
    fz_set_separation_behavior(ctx, seps, i, FZ_SEPARATION_COMPOSITE);
  }
  else if (fz_page_uses_overprint(ctx, &page->super))
   seps = fz_new_separations(ctx, 0);
  else if (fz_document_output_intent(ctx, doc))
   seps = fz_new_separations(ctx, 0);
 }


 page_bounds = fz_bound_page(ctx, fzpage);
 transform_page();

 area = fz_irect_from_rect(draw_page_bounds);
 page_tex.w = area.x1 - area.x0;
 page_tex.h = area.y1 - area.y0;
}
