
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reg ;
typedef int IRIns ;
typedef int ASMState ;


 int ASMREF_L ;
 int RSET_GPR ;
 int ra_dest (int *,int *,int ) ;
 int ra_left (int *,int ,int ) ;
 int ra_leftov (int *,int ,int ) ;

__attribute__((used)) static void asm_lref(ASMState *as, IRIns *ir)
{
  Reg r = ra_dest(as, ir, RSET_GPR);



  ra_leftov(as, r, ASMREF_L);

}
