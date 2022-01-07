
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int freeset; } ;
typedef int RegSet ;
typedef int Reg ;
typedef TYPE_1__ ASMState ;


 int ra_evict (TYPE_1__*,int) ;
 int rset_picktop (int) ;

__attribute__((used)) static Reg ra_pick(ASMState *as, RegSet allow)
{
  RegSet pick = as->freeset & allow;
  if (!pick)
    return ra_evict(as, allow);
  else
    return rset_picktop(pick);
}
