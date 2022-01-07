
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {size_t startpc; int slot; } ;
typedef TYPE_2__ VarInfo ;
struct TYPE_13__ {TYPE_1__* bcbase; } ;
struct TYPE_12__ {TYPE_4__* fs; } ;
struct TYPE_10__ {int ins; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;
typedef size_t BCPos ;
typedef int BCIns ;


 scalar_t__ BC_JMP ;
 scalar_t__ BC_UCLO ;
 size_t NO_JMP ;
 scalar_t__ bc_op (int ) ;
 int gola_isgoto (TYPE_2__*) ;
 size_t jmp_next (TYPE_4__*,size_t) ;
 int jmp_patch (TYPE_4__*,size_t,size_t) ;
 int lua_assert (int) ;
 int setbc_a (int *,int ) ;
 int setbc_j (int *,size_t) ;
 int setbc_op (int *,scalar_t__) ;

__attribute__((used)) static void gola_close(LexState *ls, VarInfo *vg)
{
  FuncState *fs = ls->fs;
  BCPos pc = vg->startpc;
  BCIns *ip = &fs->bcbase[pc].ins;
  lua_assert(gola_isgoto(vg));
  lua_assert(bc_op(*ip) == BC_JMP || bc_op(*ip) == BC_UCLO);
  setbc_a(ip, vg->slot);
  if (bc_op(*ip) == BC_JMP) {
    BCPos next = jmp_next(fs, pc);
    if (next != NO_JMP) jmp_patch(fs, next, pc);
    setbc_op(ip, BC_UCLO);
    setbc_j(ip, NO_JMP);
  }
}
