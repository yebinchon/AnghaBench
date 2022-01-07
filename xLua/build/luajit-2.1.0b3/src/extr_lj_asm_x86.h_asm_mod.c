
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t; } ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int IRCALL_lj_carith_modi64 ;
 int IRCALL_lj_carith_modu64 ;
 int IRCALL_lj_vm_modi ;
 int asm_callid (int *,TYPE_1__*,int ) ;
 scalar_t__ irt_isi64 (int ) ;
 int irt_isint (int ) ;

__attribute__((used)) static void asm_mod(ASMState *as, IRIns *ir)
{






    asm_callid(as, ir, IRCALL_lj_vm_modi);
}
