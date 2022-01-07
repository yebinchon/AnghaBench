
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* close_processor ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ pdf_processor ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*) ;

void
pdf_close_processor(fz_context *ctx, pdf_processor *proc)
{
 if (proc && proc->close_processor)
 {
  proc->close_processor(ctx, proc);
  proc->close_processor = ((void*)0);
 }
}
