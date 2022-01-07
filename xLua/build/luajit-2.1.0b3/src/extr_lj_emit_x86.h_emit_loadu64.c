
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_8__ {int* mcp; } ;
typedef int Reg ;
typedef int MCode ;
typedef TYPE_1__ ASMState ;


 int REX_64 ;
 int RID_DISPATCH ;
 int RID_RIP ;
 scalar_t__ XI_MOVri ;
 int XM_REG ;
 int XO_LEA ;
 int XO_MOVmi ;
 scalar_t__ checki32 (scalar_t__) ;
 scalar_t__ checku32 (scalar_t__) ;
 scalar_t__ dispofs (TYPE_1__*,scalar_t__) ;
 int emit_loadi (TYPE_1__*,int,scalar_t__) ;
 int* emit_opm (int ,int ,int,int,int*,int) ;
 int emit_rmro (TYPE_1__*,int ,int,int ,scalar_t__) ;
 scalar_t__ mcpofs (TYPE_1__*,scalar_t__) ;
 scalar_t__ mctopofs (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void emit_loadu64(ASMState *as, Reg r, uint64_t u64)
{
  if (checku32(u64)) {
    emit_loadi(as, r, (int32_t)u64);
  } else if (checki32((int64_t)u64)) {
    MCode *p = as->mcp;
    *(int32_t *)(p-4) = (int32_t)u64;
    as->mcp = emit_opm(XO_MOVmi, XM_REG, REX_64, r, p, -4);
  } else {
    MCode *p = as->mcp;
    *(uint64_t *)(p-8) = u64;
    p[-9] = (MCode)(XI_MOVri+(r&7));
    p[-10] = 0x48 + ((r>>3)&1);
    p -= 10;
    as->mcp = p;
  }
}
