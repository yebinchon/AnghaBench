
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int x0; int x1; int y0; int y1; } ;
struct TYPE_22__ {int panx; int pany; int iscopying; int ispanning; int selx; int sely; int beyondy; int pageno; int pagecount; int winh; TYPE_1__ selr; scalar_t__ image; int * ctx; scalar_t__ presentation_mode; int doc; TYPE_5__* page_links; int layout_h; int layout_w; } ;
typedef TYPE_3__ pdfapp_t ;
struct TYPE_23__ {int x; int y; } ;
typedef TYPE_4__ fz_point ;
typedef int fz_matrix ;
typedef int fz_location ;
struct TYPE_21__ {scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; scalar_t__ y1; } ;
struct TYPE_24__ {int uri; TYPE_2__ rect; struct TYPE_24__* next; } ;
typedef TYPE_5__ fz_link ;
struct TYPE_25__ {int x0; int y0; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_6__ fz_irect ;
typedef int fz_context ;


 int ARROW ;
 int BEYOND_THRESHHOLD ;
 int HAND ;
 int fz_invert_matrix (int ) ;
 scalar_t__ fz_is_external_link (int *,int ) ;
 void* fz_maxi (int,int) ;
 void* fz_mini (int,int) ;
 scalar_t__ fz_page_number_from_location (int *,int ,int ) ;
 TYPE_6__ fz_pixmap_bbox (int *,scalar_t__) ;
 int fz_pixmap_height (int *,scalar_t__) ;
 int fz_resolve_link (int *,int ,int ,int *,int *) ;
 TYPE_4__ fz_transform_point (TYPE_4__,int ) ;
 int handlescroll (TYPE_3__*,int,int) ;
 int pdfapp_gotopage (TYPE_3__*,scalar_t__) ;
 int pdfapp_gotouri (TYPE_3__*,int ) ;
 int pdfapp_panview (TYPE_3__*,int,int) ;
 int pdfapp_showpage (TYPE_3__*,int,int,int,int ,int ) ;
 int pdfapp_viewctm (int *,TYPE_3__*) ;
 int wincursor (TYPE_3__*,int ) ;
 int windocopy (TYPE_3__*) ;
 int winrepaint (TYPE_3__*) ;

void pdfapp_onmouse(pdfapp_t *app, int x, int y, int btn, int modifiers, int state)
{
 fz_context *ctx = app->ctx;
 fz_irect irect = { 0, 0, app->layout_w, app->layout_h };
 fz_link *link;
 fz_matrix ctm;
 fz_point p;
 int processed = 0;

 if (app->image)
  irect = fz_pixmap_bbox(app->ctx, app->image);
 p.x = x - app->panx + irect.x0;
 p.y = y - app->pany + irect.y0;

 pdfapp_viewctm(&ctm, app);
 ctm = fz_invert_matrix(ctm);

 p = fz_transform_point(p, ctm);

 for (link = app->page_links; link; link = link->next)
 {
  if (p.x >= link->rect.x0 && p.x <= link->rect.x1)
   if (p.y >= link->rect.y0 && p.y <= link->rect.y1)
    break;
 }

 if (link)
 {
  wincursor(app, HAND);
  if (btn == 1 && state == 1 && !processed)
  {
   if (fz_is_external_link(ctx, link->uri))
    pdfapp_gotouri(app, link->uri);
   else
   {
    fz_location loc = fz_resolve_link(ctx, app->doc, link->uri, ((void*)0), ((void*)0));
    pdfapp_gotopage(app, fz_page_number_from_location(ctx, app->doc, loc)+1);
   }
   return;
  }
 }
 else
 {
  wincursor(app, ARROW);
 }

 if (state == 1 && !processed)
 {
  if (btn == 1 && !app->iscopying)
  {
   app->ispanning = 1;
   app->selx = x;
   app->sely = y;
   app->beyondy = 0;
  }
  if (btn == 3 && !app->ispanning)
  {
   app->iscopying = 1;
   app->selx = x;
   app->sely = y;
   app->selr.x0 = x;
   app->selr.x1 = x;
   app->selr.y0 = y;
   app->selr.y1 = y;
  }
  if (btn == 4 || btn == 5)
  {
   handlescroll(app, modifiers, btn == 4 ? 1 : -1);
  }
  if (btn == 6 || btn == 7)
  {

   handlescroll(app, modifiers ^ (1<<0), btn == 6 ? 1 : -1);
  }
  if (app->presentation_mode)
  {
   if (btn == 1 && app->pageno < app->pagecount)
   {
    app->pageno++;
    pdfapp_showpage(app, 1, 1, 1, 0, 0);
   }
   if (btn == 3 && app->pageno > 1)
   {
    app->pageno--;
    pdfapp_showpage(app, 1, 1, 1, 0, 0);
   }
  }
 }

 else if (state == -1)
 {
  if (app->iscopying)
  {
   app->iscopying = 0;
   app->selr.x0 = fz_mini(app->selx, x) - app->panx + irect.x0;
   app->selr.x1 = fz_maxi(app->selx, x) - app->panx + irect.x0;
   app->selr.y0 = fz_mini(app->sely, y) - app->pany + irect.y0;
   app->selr.y1 = fz_maxi(app->sely, y) - app->pany + irect.y0;
   winrepaint(app);
   if (app->selr.x0 < app->selr.x1 && app->selr.y0 < app->selr.y1)
    windocopy(app);
  }
  app->ispanning = 0;
 }

 else if (app->ispanning)
 {
  int newx = app->panx + x - app->selx;
  int newy = app->pany + y - app->sely;
  int imgh = app->winh;
  if (app->image)
   imgh = fz_pixmap_height(app->ctx, app->image);



  if (newy + imgh < app->winh || newy > 0)
  {

   int deltay = y - app->sely;






   if( app->beyondy == 0 || (app->beyondy ^ deltay) >= 0 )
   {



    app->beyondy += deltay;
    if (app->beyondy > BEYOND_THRESHHOLD)
    {
     if( app->pageno > 1 )
     {
      app->pageno--;
      pdfapp_showpage(app, 1, 1, 1, 0, 0);
      if (app->image)
       newy = -fz_pixmap_height(app->ctx, app->image);
     }
     app->beyondy = 0;
    }
    else if (app->beyondy < -BEYOND_THRESHHOLD)
    {
     if( app->pageno < app->pagecount )
     {
      app->pageno++;
      pdfapp_showpage(app, 1, 1, 1, 0, 0);
      newy = 0;
     }
     app->beyondy = 0;
    }
   }
   else
    app->beyondy = 0;
  }





  pdfapp_panview(app, newx, newy);

  app->selx = x;
  app->sely = y;
 }

 else if (app->iscopying)
 {
  app->selr.x0 = fz_mini(app->selx, x) - app->panx + irect.x0;
  app->selr.x1 = fz_maxi(app->selx, x) - app->panx + irect.x0;
  app->selr.y0 = fz_mini(app->sely, y) - app->pany + irect.y0;
  app->selr.y1 = fz_maxi(app->sely, y) - app->pany + irect.y0;
  winrepaint(app);
 }
}
