
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* code; } ;
struct TYPE_9__ {int k; TYPE_5__* encode; TYPE_5__* bounds; TYPE_5__* funcs; } ;
struct TYPE_8__ {TYPE_5__* samples; } ;
struct TYPE_11__ {TYPE_3__ p; TYPE_2__ st; TYPE_1__ sa; } ;
struct TYPE_12__ {int type; TYPE_4__ u; } ;
typedef TYPE_5__ pdf_function ;
typedef int fz_storable ;
typedef int fz_context ;






 int fz_free (int *,TYPE_5__*) ;
 int pdf_drop_function (int *,TYPE_5__) ;

__attribute__((used)) static void
pdf_drop_function_imp(fz_context *ctx, fz_storable *func_)
{
 pdf_function *func = (pdf_function *)func_;
 int i;

 switch (func->type)
 {
 case 129:
  fz_free(ctx, func->u.sa.samples);
  break;
 case 131:
  break;
 case 128:
  for (i = 0; i < func->u.st.k; i++)
   pdf_drop_function(ctx, func->u.st.funcs[i]);
  fz_free(ctx, func->u.st.funcs);
  fz_free(ctx, func->u.st.bounds);
  fz_free(ctx, func->u.st.encode);
  break;
 case 130:
  fz_free(ctx, func->u.p.code);
  break;
 }
 fz_free(ctx, func);
}
