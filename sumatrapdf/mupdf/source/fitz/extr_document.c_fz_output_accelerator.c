
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_output ;
struct TYPE_4__ {int (* output_accelerator ) (int *,TYPE_1__*,int *) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_drop_output (int *,int *) ;
 int fz_throw (int *,int ,char*) ;
 int stub1 (int *,TYPE_1__*,int *) ;

void fz_output_accelerator(fz_context *ctx, fz_document *doc, fz_output *accel)
{
 if (doc == ((void*)0) || accel == ((void*)0))
  return;
 if (doc->output_accelerator == ((void*)0))
 {
  fz_drop_output(ctx, accel);
  fz_throw(ctx, FZ_ERROR_GENERIC, "Document does not support writing an accelerator");
 }

 doc->output_accelerator(ctx, doc, accel);
}
