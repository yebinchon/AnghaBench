
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cap; int code; } ;
struct TYPE_5__ {TYPE_2__ p; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_3__ pdf_function ;
typedef int fz_context ;


 int fz_realloc_array (int *,int ,int,int ) ;
 int psobj ;

__attribute__((used)) static void
resize_code(fz_context *ctx, pdf_function *func, int newsize)
{
 if (newsize >= func->u.p.cap)
 {
  int new_cap = func->u.p.cap + 64;
  func->u.p.code = fz_realloc_array(ctx, func->u.p.code, new_cap, psobj);
  func->u.p.cap = new_cap;
 }
}
