
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int UCHAR ;
typedef int BOOLEAN ;


 int DbgPrint (char*) ;
 int FALSE ;
 int MPU401_READ_DATA (scalar_t__) ;
 scalar_t__ MPU401_TIMEOUT ;
 int MPU401_WRITE_COMMAND (scalar_t__,int) ;
 int TRUE ;
 scalar_t__ WaitToReceive (scalar_t__) ;
 int WaitToSend (scalar_t__) ;

BOOLEAN InitUARTMode(ULONG BasePort)
{
    ULONG TimeOut;
    UCHAR Status = 0;

    DbgPrint("InitUARTMode() called\n");


    if (! WaitToSend(BasePort))
        return FALSE;

    DbgPrint("Resetting MPU401\n");


    MPU401_WRITE_COMMAND(BasePort, 0xff);



    DbgPrint("Waiting for an ACK\n");
    if (WaitToReceive(BasePort))
    {

        for (TimeOut = MPU401_TIMEOUT;
             (Status = (MPU401_READ_DATA(BasePort) & 0xfe) && TimeOut > 0);
             TimeOut --);
    }

    DbgPrint("Entering UART mode\n");

    MPU401_WRITE_COMMAND(BasePort, 0x3f);

    return TRUE;
}
