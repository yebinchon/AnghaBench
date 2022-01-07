
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ hidden; int usage; int (* op_BDC ) (int *,TYPE_2__*,int ,int ,int ) ;} ;
typedef TYPE_2__ pdf_processor ;
struct TYPE_10__ {int obj; int rdb; TYPE_1__* doc; int name; } ;
typedef TYPE_3__ pdf_csi ;
typedef int fz_context ;
struct TYPE_8__ {int ocg; } ;


 scalar_t__ pdf_is_hidden_ocg (int *,int ,int ,int ,int ) ;
 int resolve_properties (int *,TYPE_3__*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int *,TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static void
pdf_process_BDC(fz_context *ctx, pdf_processor *proc, pdf_csi *csi)
{
 if (proc->op_BDC)
  proc->op_BDC(ctx, proc, csi->name, csi->obj, resolve_properties(ctx, csi, csi->obj));


 if (proc->hidden > 0)
 {
  ++proc->hidden;
  return;
 }


 if (strcmp(csi->name, "OC"))
  return;

 if (pdf_is_hidden_ocg(ctx, csi->doc->ocg, csi->rdb, proc->usage, csi->obj))
  ++proc->hidden;
}
