
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float imgh; float winh; scalar_t__ winw; scalar_t__ imgw; } ;
typedef TYPE_1__ pdfapp_t ;


 int pdfapp_autozoom_horizontal (TYPE_1__*) ;
 int pdfapp_autozoom_vertical (TYPE_1__*) ;

void pdfapp_autozoom(pdfapp_t *app)
{
 float page_aspect = (float) app->imgw / app->imgh;
 float win_aspect = (float) app->winw / app->winh;
 if (page_aspect > win_aspect)
  pdfapp_autozoom_horizontal(app);
 else
  pdfapp_autozoom_vertical(app);
}
