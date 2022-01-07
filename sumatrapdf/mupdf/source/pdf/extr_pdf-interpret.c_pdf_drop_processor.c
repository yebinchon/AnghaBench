
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* drop_processor ) (int *,TYPE_1__*) ;scalar_t__ close_processor; } ;
typedef TYPE_1__ pdf_processor ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;
 int fz_warn (int *,char*) ;
 int stub1 (int *,TYPE_1__*) ;

void
pdf_drop_processor(fz_context *ctx, pdf_processor *proc)
{
 if (proc)
 {
  if (proc->close_processor)
   fz_warn(ctx, "dropping unclosed PDF processor");
  if (proc->drop_processor)
   proc->drop_processor(ctx, proc);
 }
 fz_free(ctx, proc);
}
