
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * output_accelerator; } ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int fz_new_output_with_path (int *,char const*,int ) ;
 int fz_output_accelerator (int *,TYPE_1__*,int ) ;

void fz_save_accelerator(fz_context *ctx, fz_document *doc, const char *accel)
{
 if (doc == ((void*)0))
  return;
 if (doc->output_accelerator == ((void*)0))
  return;

 fz_output_accelerator(ctx, doc, fz_new_output_with_path(ctx, accel, 0));
}
