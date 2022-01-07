
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_device ;
struct TYPE_3__ {int buf; int ctm; } ;
typedef TYPE_1__ gstate ;
typedef int fz_matrix ;
typedef int fz_context ;
typedef int ctm ;


 TYPE_1__* CURRENT_GSTATE (int *) ;
 int fz_append_printf (int *,int ,char*,int *) ;
 int fz_concat (int ,int ) ;
 int fz_invert_matrix (int ) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static void
pdf_dev_ctm(fz_context *ctx, pdf_device *pdev, fz_matrix ctm)
{
 fz_matrix inverse;
 gstate *gs = CURRENT_GSTATE(pdev);

 if (memcmp(&gs->ctm, &ctm, sizeof(ctm)) == 0)
  return;
 inverse = fz_invert_matrix(gs->ctm);
 inverse = fz_concat(ctm, inverse);
 gs->ctm = ctm;
 fz_append_printf(ctx, gs->buf, "%M cm\n", &inverse);
}
