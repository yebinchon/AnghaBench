
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* op_END ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ pdf_processor ;
struct TYPE_9__ {scalar_t__ gstate; } ;
typedef TYPE_2__ pdf_csi ;
typedef int fz_context ;


 int pdf_process_grestore (int *,TYPE_1__*,TYPE_2__*) ;
 int stub1 (int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_process_end(fz_context *ctx, pdf_processor *proc, pdf_csi *csi)
{
 while (csi->gstate > 0)
  pdf_process_grestore(ctx, proc, csi);
 if (proc->op_END)
  proc->op_END(ctx, proc);
}
