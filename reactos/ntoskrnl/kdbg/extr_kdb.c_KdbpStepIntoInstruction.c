
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_4__ {int EFlags; } ;
struct TYPE_6__ {TYPE_1__ Tf; } ;
struct TYPE_5__ {int Limit; scalar_t__ Base; int member_0; } ;
typedef int PVOID ;
typedef int Mem ;
typedef TYPE_2__ KDESCRIPTOR ;
typedef int IntDesc ;
typedef int INT ;
typedef int BOOLEAN ;


 int FALSE ;
 int KdbBreakPointTemporary ;
 TYPE_3__* KdbCurrentTrapFrame ;
 int KdbpInsertBreakPoint (int,int ,int ,int ,int *,int ,int *) ;
 int KdbpSafeReadMemory (int*,int ,int) ;
 int NT_SUCCESS (int ) ;
 int TRUE ;
 int __sidt (int*) ;

BOOLEAN
KdbpStepIntoInstruction(
    ULONG_PTR Eip)
{
    KDESCRIPTOR Idtr = {0};
    UCHAR Mem[2];
    INT IntVect;
    ULONG IntDesc[2];
    ULONG_PTR TargetEip;


    if (!NT_SUCCESS(KdbpSafeReadMemory(Mem, (PVOID)Eip, sizeof (Mem))))
    {

        return FALSE;
    }



    if (Mem[0] == 0xcc)
        IntVect = 3;
    else if (Mem[0] == 0xcd)
        IntVect = Mem[1];
    else if (Mem[0] == 0xce && KdbCurrentTrapFrame->Tf.EFlags & (1<<11))
        IntVect = 4;
    else
        return FALSE;

    if (IntVect < 32)
    {
        return FALSE;
    }


    __sidt(&Idtr.Limit);
    if (IntVect >= (Idtr.Limit + 1) / 8)
    {

        return TRUE;
    }


    if (!NT_SUCCESS(KdbpSafeReadMemory(IntDesc, (PVOID)(ULONG_PTR)(Idtr.Base + (IntVect * 8)), sizeof (IntDesc))))
    {

        return FALSE;
    }


    if ((IntDesc[1] & (1 << 15)) == 0)
    {
        return FALSE;
    }
    if ((IntDesc[1] & 0x1f00) == 0x0500)
    {

        return FALSE;
    }
    else if (((IntDesc[1] & 0x1fe0) == 0x0e00) ||
             ((IntDesc[1] & 0x1fe0) == 0x0f00))
    {

        TargetEip = (IntDesc[1] & 0xffff0000) | (IntDesc[0] & 0x0000ffff);
    }
    else
    {
        return FALSE;
    }


    if (!NT_SUCCESS(KdbpInsertBreakPoint(TargetEip, KdbBreakPointTemporary, 0, 0, ((void*)0), FALSE, ((void*)0))))
        return FALSE;

    return TRUE;
}
