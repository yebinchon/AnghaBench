
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float duration; int type; } ;
struct TYPE_6__ {int scrw; int scrh; int resolution; int layout_use_doc_css; int tint_white; int useicc; int aalevel; scalar_t__ useseparations; int colorspace; TYPE_1__ transition; int * layout_css; int layout_em; int layout_h; int layout_w; int * ctx; } ;
typedef TYPE_2__ pdfapp_t ;
typedef int fz_context ;


 int FZ_DEFAULT_LAYOUT_EM ;
 int FZ_DEFAULT_LAYOUT_H ;
 int FZ_DEFAULT_LAYOUT_W ;
 int FZ_TRANSITION_FADE ;
 int fz_device_bgr (int *) ;
 int fz_device_rgb (int *) ;
 int memset (TYPE_2__*,int ,int) ;

void pdfapp_init(fz_context *ctx, pdfapp_t *app)
{
 memset(app, 0, sizeof(pdfapp_t));
 app->scrw = 640;
 app->scrh = 480;
 app->resolution = 72;
 app->ctx = ctx;

 app->layout_w = FZ_DEFAULT_LAYOUT_W;
 app->layout_h = FZ_DEFAULT_LAYOUT_H;
 app->layout_em = FZ_DEFAULT_LAYOUT_EM;
 app->layout_css = ((void*)0);
 app->layout_use_doc_css = 1;

 app->transition.duration = 0.25f;
 app->transition.type = FZ_TRANSITION_FADE;



 app->colorspace = fz_device_rgb(ctx);

 app->tint_white = 0xFFFAF0;

 app->useicc = 1;
 app->useseparations = 0;
 app->aalevel = 8;
}
