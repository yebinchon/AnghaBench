
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* base; } ;
typedef TYPE_1__ jit_State ;
typedef scalar_t__ TRef ;
typedef int IRType ;
typedef size_t BCReg ;
typedef int BCIns ;


 scalar_t__ find_kinit (TYPE_1__*,int const*,size_t,int ) ;
 scalar_t__ fori_load (TYPE_1__*,size_t,int ,int) ;

__attribute__((used)) static TRef fori_arg(jit_State *J, const BCIns *fori, BCReg slot,
       IRType t, int mode)
{
  TRef tr = J->base[slot];
  if (!tr) {
    tr = find_kinit(J, fori, slot, t);
    if (!tr)
      tr = fori_load(J, slot, t, mode);
  }
  return tr;
}
