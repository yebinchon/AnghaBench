
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* search; int pageno; int searchpage; int pagecount; scalar_t__ hit_count; int hit_bbox; int page_text; int ctx; } ;
typedef TYPE_1__ pdfapp_t ;
typedef enum panning { ____Placeholder_panning } panning ;


 int HAND ;
 int PAN_TO_BOTTOM ;
 int PAN_TO_TOP ;
 int WAIT ;
 scalar_t__ fz_search_stext_page (int ,int ,scalar_t__*,int ,int ) ;
 int nelem (int ) ;
 int pdfapp_showpage (TYPE_1__*,int,int ,int ,int ,int) ;
 int pdfapp_warn (TYPE_1__*,char*,scalar_t__*) ;
 int wincursor (TYPE_1__*,int ) ;
 int winrepaint (TYPE_1__*) ;

__attribute__((used)) static void pdfapp_search_in_direction(pdfapp_t *app, enum panning *panto, int dir)
{
 int firstpage, page;


 if (app->search[0] == 0)
 {
  winrepaint(app);
  return;
 }

 wincursor(app, WAIT);

 firstpage = app->pageno;
 if (app->searchpage == app->pageno)
  page = app->pageno + dir;
 else
  page = app->pageno;

 if (page < 1) page = app->pagecount;
 if (page > app->pagecount) page = 1;

 do
 {
  if (page != app->pageno)
  {
   app->pageno = page;
   pdfapp_showpage(app, 1, 0, 0, 0, 1);
  }

  app->hit_count = fz_search_stext_page(app->ctx, app->page_text, app->search, app->hit_bbox, nelem(app->hit_bbox));
  if (app->hit_count > 0)
  {
   *panto = dir == 1 ? PAN_TO_TOP : PAN_TO_BOTTOM;
   app->searchpage = app->pageno;
   wincursor(app, HAND);
   winrepaint(app);
   return;
  }

  page += dir;
  if (page < 1) page = app->pagecount;
  if (page > app->pagecount) page = 1;
 } while (page != firstpage);

 pdfapp_warn(app, "String '%s' not found.", app->search);

 app->pageno = firstpage;
 pdfapp_showpage(app, 1, 0, 0, 0, 0);
 wincursor(app, HAND);
 winrepaint(app);
}
