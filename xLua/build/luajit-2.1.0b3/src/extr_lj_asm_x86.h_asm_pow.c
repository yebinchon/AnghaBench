
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t; } ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int IRCALL_lj_carith_powi64 ;
 int IRCALL_lj_carith_powu64 ;
 int asm_callid (int *,TYPE_1__*,int ) ;
 int asm_fppowi (int *,TYPE_1__*) ;
 scalar_t__ irt_isi64 (int ) ;
 int irt_isnum (int ) ;

__attribute__((used)) static void asm_pow(ASMState *as, IRIns *ir)
{






    asm_fppowi(as, ir);
}
