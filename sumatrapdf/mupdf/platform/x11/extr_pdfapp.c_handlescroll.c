
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ resolution; scalar_t__ panx; scalar_t__ winw; scalar_t__ imgw; scalar_t__ pany; scalar_t__ winh; scalar_t__ imgh; int pageno; int pagecount; scalar_t__ iscopying; scalar_t__ ispanning; } ;
typedef TYPE_1__ pdfapp_t ;


 scalar_t__ INT_MIN ;
 scalar_t__ MAXRES ;
 scalar_t__ MINRES ;
 int pdfapp_panview (TYPE_1__*,scalar_t__,scalar_t__) ;
 int pdfapp_showpage (TYPE_1__*,int,int,int,int ,int ) ;
 scalar_t__ zoom_in (scalar_t__) ;
 scalar_t__ zoom_out (scalar_t__) ;

__attribute__((used)) static void handlescroll(pdfapp_t *app, int modifiers, int dir)
{
 app->ispanning = app->iscopying = 0;
 if (modifiers & (1<<2))
 {

  if (dir > 0)
   app->resolution = zoom_in(app->resolution);
  else
   app->resolution = zoom_out(app->resolution);
  if (app->resolution > MAXRES)
   app->resolution = MAXRES;
  if (app->resolution < MINRES)
   app->resolution = MINRES;
  pdfapp_showpage(app, 0, 1, 1, 0, 0);
 }
 else
 {


  int xstep = 0;
  int ystep = 0;
  int pagestep = 0;
  if (modifiers & (1<<0))
  {
   if (dir > 0 && app->panx >= 0)
    pagestep = -1;
   else if (dir < 0 && app->panx <= app->winw - app->imgw)
    pagestep = 1;
   else
    xstep = 20 * dir;
  }
  else
  {
   if (dir > 0 && app->pany >= 0)
    pagestep = -1;
   else if (dir < 0 && app->pany <= app->winh - app->imgh)
    pagestep = 1;
   else
    ystep = 20 * dir;
  }
  if (pagestep == 0)
   pdfapp_panview(app, app->panx + xstep, app->pany + ystep);
  else if (pagestep > 0 && app->pageno < app->pagecount)
  {
   app->pageno++;
   app->pany = 0;
   pdfapp_showpage(app, 1, 1, 1, 0, 0);
  }
  else if (pagestep < 0 && app->pageno > 1)
  {
   app->pageno--;
   app->pany = INT_MIN;
   pdfapp_showpage(app, 1, 1, 1, 0, 0);
  }
 }
}
