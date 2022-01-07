
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_5__ {int flags; } ;
typedef int Reg ;
typedef TYPE_1__ ASMState ;


 int JIT_F_LEA_AGU ;
 int XG_ARITHi (int ) ;
 int XO_LEA ;
 int XOg_ADD ;
 int emit_gri (TYPE_1__*,int ,int ,scalar_t__) ;
 int emit_rmro (TYPE_1__*,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void emit_addptr(ASMState *as, Reg r, int32_t ofs)
{
  if (ofs) {
    if ((as->flags & JIT_F_LEA_AGU))
      emit_rmro(as, XO_LEA, r, r, ofs);
    else
      emit_gri(as, XG_ARITHi(XOg_ADD), r, ofs);
  }
}
