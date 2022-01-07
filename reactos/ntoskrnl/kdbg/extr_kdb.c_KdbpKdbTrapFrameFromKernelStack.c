
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef void* ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_5__ {void* SegGs; void* SegEs; void* SegDs; int SegCs; void* HardwareSegSs; scalar_t__ HardwareEsp; void* Eip; void* Ebx; void* Esi; void* Edi; void* Ebp; } ;
struct TYPE_6__ {TYPE_1__ Tf; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_2__* PKDB_KTRAP_FRAME ;
typedef int KDB_KTRAP_FRAME ;


 int KGDT_R0_CODE ;
 void* KGDT_R0_DATA ;
 int RtlZeroMemory (TYPE_2__*,int) ;

__attribute__((used)) static VOID
KdbpKdbTrapFrameFromKernelStack(
    PVOID KernelStack,
    PKDB_KTRAP_FRAME KdbTrapFrame)
{
    ULONG_PTR *StackPtr;

    RtlZeroMemory(KdbTrapFrame, sizeof(KDB_KTRAP_FRAME));
    StackPtr = (ULONG_PTR *) KernelStack;
}
