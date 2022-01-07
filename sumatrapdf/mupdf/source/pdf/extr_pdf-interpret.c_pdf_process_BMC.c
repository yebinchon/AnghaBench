
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hidden; int (* op_BMC ) (int *,TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ pdf_processor ;
typedef int pdf_csi ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*,char const*) ;

__attribute__((used)) static void
pdf_process_BMC(fz_context *ctx, pdf_processor *proc, pdf_csi *csi, const char *name)
{
 if (proc->op_BMC)
  proc->op_BMC(ctx, proc, name);
 if (proc->hidden > 0)
  ++proc->hidden;
}
