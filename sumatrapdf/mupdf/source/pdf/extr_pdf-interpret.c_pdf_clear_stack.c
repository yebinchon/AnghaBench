
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; scalar_t__* stack; scalar_t__ string_len; scalar_t__* name; int * obj; } ;
typedef TYPE_1__ pdf_csi ;
typedef int fz_context ;


 int pdf_drop_obj (int *,int *) ;

__attribute__((used)) static void
pdf_clear_stack(fz_context *ctx, pdf_csi *csi)
{
 int i;

 pdf_drop_obj(ctx, csi->obj);
 csi->obj = ((void*)0);

 csi->name[0] = 0;
 csi->string_len = 0;
 for (i = 0; i < csi->top; i++)
  csi->stack[i] = 0;

 csi->top = 0;
}
