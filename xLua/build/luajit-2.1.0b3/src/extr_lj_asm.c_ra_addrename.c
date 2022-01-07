
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_8__ {TYPE_1__* ir; } ;
struct TYPE_10__ {TYPE_2__ cur; } ;
struct TYPE_9__ {TYPE_5__* J; } ;
struct TYPE_7__ {int s; scalar_t__ r; } ;
typedef int SnapNo ;
typedef scalar_t__ Reg ;
typedef size_t IRRef ;
typedef TYPE_3__ ASMState ;


 int IRT (int ,int ) ;
 int IRT_NIL ;
 int IR_RENAME ;
 int SPS_NONE ;
 int lj_ir_emit (TYPE_5__*) ;
 int lj_ir_set (TYPE_5__*,int ,size_t,int ) ;
 size_t tref_ref (int ) ;

__attribute__((used)) static void ra_addrename(ASMState *as, Reg down, IRRef ref, SnapNo snapno)
{
  IRRef ren;
  lj_ir_set(as->J, IRT(IR_RENAME, IRT_NIL), ref, snapno);
  ren = tref_ref(lj_ir_emit(as->J));
  as->J->cur.ir[ren].r = (uint8_t)down;
  as->J->cur.ir[ren].s = SPS_NONE;
}
