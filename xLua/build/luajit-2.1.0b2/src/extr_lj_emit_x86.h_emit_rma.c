
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int x86Op ;
typedef int int32_t ;
struct TYPE_3__ {int * mcp; } ;
typedef int Reg ;
typedef int MCode ;
typedef TYPE_1__ ASMState ;


 int MODRM (int ,int ,int ) ;
 int RID_EBP ;
 int RID_ESP ;
 int XM_OFS0 ;
 int XM_SCALE1 ;
 void* emit_opm (int ,int ,int ,int ,int *,int) ;
 int ptr2addr (void const*) ;

__attribute__((used)) static void emit_rma(ASMState *as, x86Op xo, Reg rr, const void *addr)
{
  MCode *p = as->mcp;
  *(int32_t *)(p-4) = ptr2addr(addr);




  as->mcp = emit_opm(xo, XM_OFS0, rr, RID_EBP, p, -4);

}
