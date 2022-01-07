
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RegSet ;
typedef int Reg ;
typedef int ASMState ;


 int ra_pick (int *,int) ;
 int ra_rename (int *,int ,int ) ;
 int rset_picktop (int) ;

__attribute__((used)) static void asm_phi_break(ASMState *as, RegSet blocked, RegSet blockedby,
     RegSet allow)
{
  RegSet candidates = blocked & allow;
  if (candidates) {



    Reg down, up = ra_pick(as, ~blocked & allow);
    if (candidates & ~blockedby)
      candidates = candidates & ~blockedby;
    down = rset_picktop(candidates);
    ra_rename(as, down, up);
  }
}
