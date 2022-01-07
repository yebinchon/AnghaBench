
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int BOOLEAN ;


 int DPRINT (char*) ;
 int FALSE ;
 int SB_READY_TO_RECEIVE (int ) ;
 int SB_TIMEOUT ;
 int TRUE ;

BOOLEAN WaitToReceive(ULONG BasePort)
{
    int TimeOut;

    DPRINT("WaitToReceive ");


    for (TimeOut = SB_TIMEOUT;
         ! SB_READY_TO_RECEIVE(BasePort) && TimeOut > 0;
         TimeOut --);


    if (! TimeOut)
    {
        DPRINT("FAILED\n");
        return FALSE;
    }

    DPRINT("SUCCEEDED\n");

    return TRUE;
}
