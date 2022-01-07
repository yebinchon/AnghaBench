
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ in_text; } ;
typedef TYPE_1__ pdf_device ;
struct TYPE_7__ {int buf; } ;
typedef TYPE_2__ gstate ;
typedef int fz_context ;


 TYPE_2__* CURRENT_GSTATE (TYPE_1__*) ;
 int fz_append_string (int *,int ,char*) ;

__attribute__((used)) static void
pdf_dev_end_text(fz_context *ctx, pdf_device *pdev)
{
 gstate *gs = CURRENT_GSTATE(pdev);

 if (!pdev->in_text)
  return;
 pdev->in_text = 0;
 fz_append_string(ctx, gs->buf, "ET\n");
}
