
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float resolution; float imgw; scalar_t__ winw; } ;
typedef TYPE_1__ pdfapp_t ;


 float MAXRES ;
 float MINRES ;
 int pdfapp_showpage (TYPE_1__*,int ,int,int,int ,int ) ;

void pdfapp_autozoom_horizontal(pdfapp_t *app)
{
 app->resolution *= (float) app->winw / app->imgw;
 if (app->resolution > MAXRES)
  app->resolution = MAXRES;
 else if (app->resolution < MINRES)
  app->resolution = MINRES;
 pdfapp_showpage(app, 0, 1, 1, 0, 0);
}
