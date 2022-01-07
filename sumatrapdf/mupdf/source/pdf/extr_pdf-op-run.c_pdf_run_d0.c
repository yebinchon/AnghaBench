
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;
struct TYPE_3__ {int flags; } ;


 int FZ_DEVFLAG_COLOR ;

__attribute__((used)) static void pdf_run_d0(fz_context *ctx, pdf_processor *proc, float wx, float wy)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pr->dev->flags |= FZ_DEVFLAG_COLOR;
}
