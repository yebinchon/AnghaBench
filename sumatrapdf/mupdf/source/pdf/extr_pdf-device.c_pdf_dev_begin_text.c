
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int in_text; } ;
typedef TYPE_1__ pdf_device ;
struct TYPE_8__ {int buf; } ;
typedef TYPE_2__ gstate ;
typedef int fz_context ;


 TYPE_2__* CURRENT_GSTATE (TYPE_1__*) ;
 int fz_append_string (int *,int ,char*) ;
 int pdf_dev_trm (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
pdf_dev_begin_text(fz_context *ctx, pdf_device *pdev, int trm)
{
 pdf_dev_trm(ctx, pdev, trm);
 if (!pdev->in_text)
 {
  gstate *gs = CURRENT_GSTATE(pdev);
  fz_append_string(ctx, gs->buf, "BT\n");
  pdev->in_text = 1;
 }
}
