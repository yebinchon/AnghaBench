
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mcprot; int szmcarea; int mcarea; } ;
typedef TYPE_1__ jit_State ;


 scalar_t__ LJ_UNLIKELY (int ) ;
 int mcode_protfail (TYPE_1__*) ;
 int mcode_setprot (int ,int ,int) ;

__attribute__((used)) static void mcode_protect(jit_State *J, int prot)
{
  if (J->mcprot != prot) {
    if (LJ_UNLIKELY(mcode_setprot(J->mcarea, J->szmcarea, prot)))
      mcode_protfail(J);
    J->mcprot = prot;
  }
}
