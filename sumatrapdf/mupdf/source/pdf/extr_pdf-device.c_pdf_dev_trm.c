
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_device ;
struct TYPE_3__ {int text_rendering_mode; int buf; } ;
typedef TYPE_1__ gstate ;
typedef int fz_context ;


 TYPE_1__* CURRENT_GSTATE (int *) ;
 int fz_append_printf (int *,int ,char*,int) ;

__attribute__((used)) static void
pdf_dev_trm(fz_context *ctx, pdf_device *pdev, int trm)
{
 gstate *gs = CURRENT_GSTATE(pdev);

 if (gs->text_rendering_mode == trm)
  return;
 gs->text_rendering_mode = trm;
 fz_append_printf(ctx, gs->buf, "%d Tr\n", trm);
}
