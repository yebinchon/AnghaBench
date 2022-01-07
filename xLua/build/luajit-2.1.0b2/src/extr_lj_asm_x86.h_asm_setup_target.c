
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* T; } ;
struct TYPE_5__ {int nsnap; } ;
typedef TYPE_2__ ASMState ;


 int asm_exitstub_setup (TYPE_2__*,int ) ;

__attribute__((used)) static void asm_setup_target(ASMState *as)
{
  asm_exitstub_setup(as, as->T->nsnap);
}
