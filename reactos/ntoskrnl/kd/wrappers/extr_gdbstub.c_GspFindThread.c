
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int PLONG ;
typedef int * PETHREAD ;
typedef int * PCHAR ;
typedef scalar_t__ HANDLE ;
typedef int BOOLEAN ;


 int FALSE ;
 int GspHex2Long (int **,int ) ;
 int NT_SUCCESS (int ) ;
 int PsLookupThreadByThreadId (scalar_t__,int **) ;
 int TRUE ;
 scalar_t__ strcmp (int *,char*) ;

BOOLEAN
GspFindThread(PCHAR Data, PETHREAD *Thread)
{
    PETHREAD ThreadInfo = ((void*)0);

    if (strcmp(Data, "-1") == 0)
    {

        ThreadInfo = ((void*)0);
    }
    else
    {
        ULONG uThreadId;
        HANDLE ThreadId;
        PCHAR ptr = &Data[0];

        GspHex2Long(&ptr, (PLONG)&uThreadId);
        ThreadId = (HANDLE)uThreadId;

        if (!NT_SUCCESS(PsLookupThreadByThreadId(ThreadId, &ThreadInfo)))
        {
            *Thread = ((void*)0);
            return FALSE;
        }
    }

    *Thread = ThreadInfo;
    return TRUE;
}
