
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_8__ {scalar_t__ o; } ;
struct TYPE_7__ {scalar_t__ curins; scalar_t__* mcp; TYPE_1__* T; } ;
struct TYPE_6__ {scalar_t__ nins; } ;
typedef int Reg ;
typedef scalar_t__ MCode ;
typedef TYPE_2__ ASMState ;


 TYPE_5__* IR (scalar_t__) ;
 scalar_t__ IR_HIOP ;
 scalar_t__ LJ_32 ;
 int REXRB (scalar_t__*,int ,int) ;
 scalar_t__ XI_MOVri ;
 int XO_ARITH (int ) ;
 int XOg_XOR ;
 int emit_rr (TYPE_2__*,int ,int,int) ;

__attribute__((used)) static void emit_loadi(ASMState *as, Reg r, int32_t i)
{

  if (i == 0 && !(LJ_32 && (IR(as->curins)->o == IR_HIOP ||
       (as->curins+1 < as->T->nins &&
        IR(as->curins+1)->o == IR_HIOP)))) {
    emit_rr(as, XO_ARITH(XOg_XOR), r, r);
  } else {
    MCode *p = as->mcp;
    *(int32_t *)(p-4) = i;
    p[-5] = (MCode)(XI_MOVri+(r&7));
    p -= 5;
    REXRB(p, 0, r);
    as->mcp = p;
  }
}
