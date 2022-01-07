
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int * PRKEVENT ;
typedef int BOOLEAN ;


 int Executive ;
 int FALSE ;
 scalar_t__ KeWaitForMultipleObjects (int,int **,int ,int ,int ,int ,int *,int *) ;
 int KernelMode ;
 scalar_t__ STATUS_WAIT_0 ;
 int TRUE ;
 int TerminationEvent ;
 int WaitAny ;

__attribute__((used)) static
BOOLEAN
WaitForEventSafely(PRKEVENT Event)
{
    PVOID WaitObjects[] = {Event, &TerminationEvent};

    if (KeWaitForMultipleObjects(2,
                                 WaitObjects,
                                 WaitAny,
                                 Executive,
                                 KernelMode,
                                 FALSE,
                                 ((void*)0),
                                 ((void*)0)) == STATUS_WAIT_0)
    {

        return TRUE;
    }
    else
    {

        return FALSE;
    }
}
