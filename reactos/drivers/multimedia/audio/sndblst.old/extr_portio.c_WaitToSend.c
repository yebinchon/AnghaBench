
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int BOOLEAN ;


 int DPRINT (char*) ;
 int FALSE ;
 int SB_READY_TO_SEND (int ) ;
 int SB_TIMEOUT ;
 int TRUE ;

BOOLEAN WaitToSend(ULONG BasePort)
{
    int TimeOut;

    DPRINT("WaitToSend ");


    for (TimeOut = SB_TIMEOUT;
         ! SB_READY_TO_SEND(BasePort) && TimeOut > 0;
         TimeOut --);


    if (! TimeOut)
    {
        DPRINT("FAILED\n");
        return FALSE;
    }

    DPRINT("SUCCEEDED\n");

    return TRUE;
}
