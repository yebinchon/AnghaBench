
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int LONG ;
typedef int BOOLEAN ;


 int FALSE ;
 int KdbBreakPointTemporary ;
 int KdbpGetInstLength (scalar_t__) ;
 int KdbpInsertBreakPoint (scalar_t__,int ,int ,int ,int *,int ,int *) ;
 int KdbpShouldStepOverInstruction (scalar_t__) ;
 int NT_SUCCESS (int ) ;
 int TRUE ;

BOOLEAN
KdbpStepOverInstruction(
    ULONG_PTR Eip)
{
    LONG InstLen;

    if (!KdbpShouldStepOverInstruction(Eip))
        return FALSE;

    InstLen = KdbpGetInstLength(Eip);
    if (InstLen < 1)
        return FALSE;

    if (!NT_SUCCESS(KdbpInsertBreakPoint(Eip + InstLen, KdbBreakPointTemporary, 0, 0, ((void*)0), FALSE, ((void*)0))))
        return FALSE;

    return TRUE;
}
