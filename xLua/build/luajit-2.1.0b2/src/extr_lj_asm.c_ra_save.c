
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int RA_DBGX (int *) ;
 int emit_spstore (int *,TYPE_1__*,int ,int ) ;
 int sps_scale (int ) ;

__attribute__((used)) static void ra_save(ASMState *as, IRIns *ir, Reg r)
{
  RA_DBGX((as, "save      $i $r", ir, r));
  emit_spstore(as, ir, r, sps_scale(ir->s));
}
