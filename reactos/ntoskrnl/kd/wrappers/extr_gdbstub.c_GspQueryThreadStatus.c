
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PETHREAD ;
typedef int * PCHAR ;


 scalar_t__ GspFindThread (int *,int *) ;
 char* GspOutBuffer ;
 int ObDereferenceObject (int ) ;

VOID
GspQueryThreadStatus(PCHAR Request)
{
    PETHREAD ThreadInfo;
    PCHAR ptr = &Request[0];

    if (GspFindThread(ptr, &ThreadInfo))
    {
        ObDereferenceObject(ThreadInfo);

        GspOutBuffer[0] = 'O';
        GspOutBuffer[1] = 'K';
        GspOutBuffer[2] = '\0';
    }
    else
    {
        GspOutBuffer[0] = 'E';
        GspOutBuffer[1] = '\0';
    }
}
