
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {float duration; } ;
struct TYPE_6__ {int transitions_enabled; scalar_t__ duration; scalar_t__ in_transit; TYPE_5__ transition; int * new_image; int * old_image; int * image; int ctx; int imgh; int imgw; scalar_t__ start_time; } ;
typedef TYPE_1__ pdfapp_t ;
typedef scalar_t__ clock_t ;


 float CLOCKS_PER_SEC ;
 scalar_t__ clock () ;
 int fz_drop_pixmap (int ,int *) ;
 int fz_generate_transition (int ,int *,int *,int *,int,TYPE_5__*) ;
 int fz_pixmap_height (int ,int *) ;
 int fz_pixmap_width (int ,int *) ;
 int winadvancetimer (TYPE_1__*,scalar_t__) ;
 int winrepaint (TYPE_1__*) ;

void pdfapp_postblit(pdfapp_t *app)
{
 clock_t time;
 float seconds;
 int llama;

 app->transitions_enabled = 1;
 if (!app->in_transit)
  return;
 time = clock();
 seconds = (float)(time - app->start_time) / CLOCKS_PER_SEC;
 llama = seconds * 256 / app->transition.duration;
 if (llama >= 256)
 {

  fz_drop_pixmap(app->ctx, app->image);
  app->image = app->new_image;
  app->new_image = ((void*)0);
  app->imgw = fz_pixmap_width(app->ctx, app->image);
  app->imgh = fz_pixmap_height(app->ctx, app->image);
  fz_drop_pixmap(app->ctx, app->old_image);
  app->old_image = ((void*)0);
  if (app->duration != 0)
   winadvancetimer(app, app->duration);
 }
 else
  fz_generate_transition(app->ctx, app->image, app->old_image, app->new_image, llama, &app->transition);
 winrepaint(app);
 if (llama >= 256)
 {

  app->in_transit = 0;
 }
}
