
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ui; } ;
typedef TYPE_1__ pdf_ocg_descriptor ;
typedef int fz_context ;


 int fz_free (int *,int *) ;

__attribute__((used)) static void
drop_ui(fz_context *ctx, pdf_ocg_descriptor *desc)
{
 if (!desc)
  return;

 fz_free(ctx, desc->ui);
 desc->ui = ((void*)0);
}
