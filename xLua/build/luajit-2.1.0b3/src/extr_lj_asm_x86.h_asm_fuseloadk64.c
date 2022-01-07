
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ const uint64_t ;
typedef void* int32_t ;
struct TYPE_14__ {scalar_t__ u64; } ;
struct TYPE_11__ {void* idx; void* base; void* ofs; } ;
struct TYPE_13__ {int mcbot; int mclim; TYPE_1__ mrm; void* mctop; } ;
struct TYPE_12__ {void* i; } ;
typedef int Reg ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 int LJ_GC64 ;
 int MCLIM_REDZONE ;
 void* RID_DISPATCH ;
 int RID_MRM ;
 void* RID_NONE ;
 void* RID_RIP ;
 int XI_INT3 ;
 scalar_t__ checki32 (intptr_t) ;
 intptr_t dispofs (TYPE_3__*,scalar_t__ const*) ;
 TYPE_6__* ir_k64 (TYPE_2__*) ;
 int lua_assert (int) ;
 intptr_t mcpofs (TYPE_3__*,...) ;
 intptr_t mctopofs (TYPE_3__*,scalar_t__ const*) ;
 void* ptr2addr (scalar_t__ const*) ;

__attribute__((used)) static Reg asm_fuseloadk64(ASMState *as, IRIns *ir)
{
  const uint64_t *k = &ir_k64(ir)->u64;
  if (!LJ_GC64 || checki32((intptr_t)k)) {
    as->mrm.ofs = ptr2addr(k);
    as->mrm.base = RID_NONE;
  }
  as->mrm.idx = RID_NONE;
  return RID_MRM;
}
