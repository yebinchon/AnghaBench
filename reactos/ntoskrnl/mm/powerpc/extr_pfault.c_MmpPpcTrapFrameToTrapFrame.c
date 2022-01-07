
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int srr1; int dsisr; int dar; int srr0; int xer; int ctr; int cr; int lr; int gpr; } ;
typedef TYPE_1__ ppc_trap_frame_t ;
typedef int VOID ;
typedef int ULONG ;
struct TYPE_6__ {int Msr; int Dr1; int Dr0; int Iar; int Xer; int Ctr; int Cr; int Lr; int Gpr0; } ;
typedef TYPE_2__* PKTRAP_FRAME ;


 int RtlCopyMemory (int *,int ,int) ;

VOID MmpPpcTrapFrameToTrapFrame(ppc_trap_frame_t *frame, PKTRAP_FRAME Tf)
{
    RtlCopyMemory(&Tf->Gpr0, frame->gpr, 12 * sizeof(ULONG));
    Tf->Lr = frame->lr;
    Tf->Cr = frame->cr;
    Tf->Ctr = frame->ctr;
    Tf->Xer = frame->xer;
    Tf->Iar = frame->srr0;
    Tf->Msr = frame->srr1 & 0xffff;
    Tf->Dr0 = frame->dar;
    Tf->Dr1 = frame->dsisr;
}
