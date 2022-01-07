
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ imgw; scalar_t__ winw; scalar_t__ imgh; scalar_t__ winh; int panx; int pany; } ;
typedef TYPE_1__ pdfapp_t ;


 int winrepaint (TYPE_1__*) ;

__attribute__((used)) static void pdfapp_panview(pdfapp_t *app, int newx, int newy)
{
 if (newx > 0)
  newx = 0;
 if (newy > 0)
  newy = 0;

 if (newx + app->imgw < app->winw)
  newx = app->winw - app->imgw;
 if (newy + app->imgh < app->winh)
  newy = app->winh - app->imgh;

 if (app->winw >= app->imgw)
  newx = (app->winw - app->imgw) / 2;
 if (app->winh >= app->imgh)
  newy = (app->winh - app->imgh) / 2;

 if (newx != app->panx || newy != app->pany)
  winrepaint(app);

 app->panx = newx;
 app->pany = newy;
}
