
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int winw; int winh; int pany; int panx; } ;
typedef TYPE_1__ pdfapp_t ;


 int pdfapp_panview (TYPE_1__*,int ,int ) ;
 int winrepaint (TYPE_1__*) ;

void pdfapp_onresize(pdfapp_t *app, int w, int h)
{
 if (app->winw != w || app->winh != h)
 {
  app->winw = w;
  app->winh = h;
  pdfapp_panview(app, app->panx, app->pany);
  winrepaint(app);
 }
}
