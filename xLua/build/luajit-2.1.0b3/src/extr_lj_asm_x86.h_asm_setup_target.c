
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ base; } ;
struct TYPE_8__ {TYPE_2__ mrm; TYPE_1__* T; } ;
struct TYPE_6__ {int nsnap; } ;
typedef TYPE_3__ ASMState ;


 int asm_exitstub_setup (TYPE_3__*,int ) ;

__attribute__((used)) static void asm_setup_target(ASMState *as)
{
  asm_exitstub_setup(as, as->T->nsnap);
  as->mrm.base = 0;
}
