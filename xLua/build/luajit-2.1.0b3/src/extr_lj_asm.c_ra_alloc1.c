
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r; } ;
typedef int RegSet ;
typedef int Reg ;
typedef int IRRef ;
typedef int ASMState ;


 TYPE_1__* IR (int ) ;
 int ra_allocref (int *,int ,int ) ;
 scalar_t__ ra_noreg (int ) ;
 int ra_noweak (int *,int ) ;

__attribute__((used)) static Reg ra_alloc1(ASMState *as, IRRef ref, RegSet allow)
{
  Reg r = IR(ref)->r;

  if (ra_noreg(r)) r = ra_allocref(as, ref, allow);
  ra_noweak(as, r);
  return r;
}
