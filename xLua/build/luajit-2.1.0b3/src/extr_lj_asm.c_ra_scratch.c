
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RegSet ;
typedef int Reg ;
typedef int ASMState ;


 int RA_DBGX (int *) ;
 int ra_modified (int *,int ) ;
 int ra_pick (int *,int ) ;

__attribute__((used)) static Reg ra_scratch(ASMState *as, RegSet allow)
{
  Reg r = ra_pick(as, allow);
  ra_modified(as, r);
  RA_DBGX((as, "scratch        $r", r));
  return r;
}
