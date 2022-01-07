
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int freeset; } ;
typedef int Reg ;
typedef int IRIns ;
typedef TYPE_1__ ASMState ;


 int RID2RSET (int ) ;
 int emit_movrr (TYPE_1__*,int *,int ,int ) ;
 int lua_assert (int ) ;
 int ra_dest (TYPE_1__*,int *,int ) ;
 int ra_modified (TYPE_1__*,int ) ;
 int rset_test (int ,int ) ;

__attribute__((used)) static void ra_destreg(ASMState *as, IRIns *ir, Reg r)
{
  Reg dest = ra_dest(as, ir, RID2RSET(r));
  if (dest != r) {
    lua_assert(rset_test(as->freeset, r));
    ra_modified(as, r);
    emit_movrr(as, ir, dest, r);
  }
}
