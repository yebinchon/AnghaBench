
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int image; int ctx; } ;
typedef TYPE_1__ pdfapp_t ;
typedef int fz_rect ;


 int fz_invert_pixmap_rect (int ,int ,int ) ;
 int fz_round_rect (int ) ;

void pdfapp_invert(pdfapp_t *app, fz_rect rect)
{
 fz_invert_pixmap_rect(app->ctx, app->image, fz_round_rect(rect));
}
