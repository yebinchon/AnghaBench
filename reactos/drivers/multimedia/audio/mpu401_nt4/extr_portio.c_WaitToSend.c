
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int BOOLEAN ;


 int DbgPrint (char*) ;
 int FALSE ;
 int MPU401_READY_TO_SEND (int ) ;
 int MPU401_TIMEOUT ;
 int TRUE ;

BOOLEAN WaitToSend(ULONG BasePort)
{
    int TimeOut;

    DbgPrint("WaitToSend ");


    for (TimeOut = MPU401_TIMEOUT;
         ! MPU401_READY_TO_SEND(BasePort) && TimeOut > 0;
         TimeOut --);


    if (! TimeOut)
    {
        DbgPrint("FAILED\n");
        return FALSE;
    }

    DbgPrint("SUCCEEDED\n");

    return TRUE;
}
