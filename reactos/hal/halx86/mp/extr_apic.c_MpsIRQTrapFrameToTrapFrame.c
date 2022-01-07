
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef void* USHORT ;
struct TYPE_6__ {int Eflags; int Cs; int Eip; int Edi; int Esi; int Ebp; int Esp; int Ebx; int Edx; int Ecx; int Eax; scalar_t__ Ds; scalar_t__ Es; scalar_t__ Fs; scalar_t__ Gs; } ;
struct TYPE_5__ {int EFlags; int SegCs; int Eip; int Edi; int Esi; int Ebp; int HardwareEsp; int Ebx; int Edx; int Ecx; int Eax; void* SegDs; void* SegEs; void* SegFs; void* SegGs; } ;
typedef TYPE_1__* PKTRAP_FRAME ;
typedef TYPE_2__* PKIRQ_TRAPFRAME ;


 int UNIMPLEMENTED ;

VOID
MpsIRQTrapFrameToTrapFrame(PKIRQ_TRAPFRAME IrqTrapFrame,
      PKTRAP_FRAME TrapFrame)
{



   TrapFrame->SegGs = (USHORT)IrqTrapFrame->Gs;
   TrapFrame->SegFs = (USHORT)IrqTrapFrame->Fs;
   TrapFrame->SegEs = (USHORT)IrqTrapFrame->Es;
   TrapFrame->SegDs = (USHORT)IrqTrapFrame->Ds;
   TrapFrame->Eax = IrqTrapFrame->Eax;
   TrapFrame->Ecx = IrqTrapFrame->Ecx;
   TrapFrame->Edx = IrqTrapFrame->Edx;
   TrapFrame->Ebx = IrqTrapFrame->Ebx;
   TrapFrame->HardwareEsp = IrqTrapFrame->Esp;
   TrapFrame->Ebp = IrqTrapFrame->Ebp;
   TrapFrame->Esi = IrqTrapFrame->Esi;
   TrapFrame->Edi = IrqTrapFrame->Edi;
   TrapFrame->Eip = IrqTrapFrame->Eip;
   TrapFrame->SegCs = IrqTrapFrame->Cs;
   TrapFrame->EFlags = IrqTrapFrame->Eflags;

}
