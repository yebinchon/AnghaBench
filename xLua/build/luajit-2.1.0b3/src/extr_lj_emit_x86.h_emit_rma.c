
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ x86Op ;
typedef int int32_t ;
struct TYPE_8__ {int * mcp; } ;
typedef int Reg ;
typedef int MCode ;
typedef TYPE_1__ ASMState ;


 int MODRM (int ,int ,int ) ;
 int RID_DISPATCH ;
 int RID_EBP ;
 int RID_ESP ;
 int RID_RIP ;
 int XM_OFS0 ;
 int XM_SCALE1 ;
 scalar_t__ XO_MOV ;
 scalar_t__ XO_MOVSD ;
 scalar_t__ checki32 (intptr_t) ;
 intptr_t dispofs (TYPE_1__*,void const*) ;
 int emit_loadu64 (TYPE_1__*,int ,uintptr_t) ;
 void* emit_opm (scalar_t__,int ,int ,int ,int *,int) ;
 int emit_rmro (TYPE_1__*,scalar_t__,int ,int ,int ) ;
 intptr_t mcpofs (TYPE_1__*,void const*) ;
 intptr_t mctopofs (TYPE_1__*,void const*) ;
 int ptr2addr (void const*) ;

__attribute__((used)) static void emit_rma(ASMState *as, x86Op xo, Reg rr, const void *addr)
{
  {
    MCode *p = as->mcp;
    *(int32_t *)(p-4) = ptr2addr(addr);




    as->mcp = emit_opm(xo, XM_OFS0, rr, RID_EBP, p, -4);

  }
}
