
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ir; } ;
struct TYPE_8__ {TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_9__ {scalar_t__ op2; scalar_t__ o; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_3__ IRIns ;
typedef int AliasRet ;


 int ALIAS_MAY ;
 int ALIAS_NO ;
 scalar_t__ IR_ASTORE ;
 scalar_t__ IR_FSTORE ;
 scalar_t__ IR_HSTORE ;
 scalar_t__ IR_USTORE ;

__attribute__((used)) static AliasRet aa_escape(jit_State *J, IRIns *ir, IRIns *stop)
{
  IRRef ref = (IRRef)(ir - J->cur.ir);
  for (ir++; ir < stop; ir++)
    if (ir->op2 == ref &&
 (ir->o == IR_ASTORE || ir->o == IR_HSTORE ||
  ir->o == IR_USTORE || ir->o == IR_FSTORE))
      return ALIAS_MAY;
  return ALIAS_NO;
}
