
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ annotations_list; int ctx; scalar_t__ page_list; } ;
typedef TYPE_1__ pdfapp_t ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_cookie ;


 int fz_run_display_list (int ,scalar_t__,int *,int const,int ,int *) ;

__attribute__((used)) static void pdfapp_runpage(pdfapp_t *app, fz_device *dev, const fz_matrix ctm, fz_rect scissor, fz_cookie *cookie)
{
 if (app->page_list)
  fz_run_display_list(app->ctx, app->page_list, dev, ctm, scissor, cookie);
 if (app->annotations_list)
  fz_run_display_list(app->ctx, app->annotations_list, dev, ctm, scissor, cookie);
}
