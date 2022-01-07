
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hidden; int (* op_EMC ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ pdf_processor ;
typedef int pdf_csi ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_process_EMC(fz_context *ctx, pdf_processor *proc, pdf_csi *csi)
{
 if (proc->op_EMC)
  proc->op_EMC(ctx, proc);
 if (proc->hidden > 0)
  --proc->hidden;
}
