
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u32; } ;
typedef int CTSize ;
typedef TYPE_1__ CPValue ;
typedef int CPState ;


 int LJ_ERR_FFI_INVSIZE ;
 int cp_err (int *,int ) ;
 int cp_expr_kint (int *,TYPE_1__*) ;

__attribute__((used)) static CTSize cp_expr_ksize(CPState *cp)
{
  CPValue k;
  cp_expr_kint(cp, &k);
  if (k.u32 >= 0x80000000u) cp_err(cp, LJ_ERR_FFI_INVSIZE);
  return k.u32;
}
