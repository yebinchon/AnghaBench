
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* op_q ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ pdf_processor ;
struct TYPE_7__ {int gstate; } ;
typedef TYPE_2__ pdf_csi ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_process_gsave(fz_context *ctx, pdf_processor *proc, pdf_csi *csi)
{
 if (proc->op_q)
  proc->op_q(ctx, proc);
 ++csi->gstate;
}
