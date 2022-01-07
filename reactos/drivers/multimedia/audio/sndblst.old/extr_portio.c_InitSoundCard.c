
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int BOOLEAN ;


 int DPRINT (char*,...) ;
 int FALSE ;
 scalar_t__ SB_DSP_READY ;
 int SB_GET_DSP_VERSION ;
 scalar_t__ SB_READ_DATA (int) ;
 int SB_TIMEOUT ;
 int SB_WRITE_DATA (int,int ) ;
 int SB_WRITE_RESET (int,int) ;
 scalar_t__ WaitToReceive (int) ;
 int WaitToSend (int) ;

USHORT InitSoundCard(ULONG BasePort)
{
    ULONG TimeOut;
    BOOLEAN Status;
    UCHAR DSP_Major, DSP_Minor;

    DPRINT("InitSoundCard() called\n");

    DPRINT("Resetting sound card\n");



    SB_WRITE_RESET(BasePort, 0x01);
    for (TimeOut = 0; TimeOut < 30000; TimeOut ++);
    SB_WRITE_RESET(BasePort, 0x00);



    DPRINT("Waiting for an ACK\n");
    if (WaitToReceive(BasePort))
    {

        for (TimeOut = SB_TIMEOUT;
             (Status = (SB_READ_DATA(BasePort) != SB_DSP_READY) && (TimeOut > 0));
             TimeOut --);
    }

    DPRINT("Querying DSP version\n");
    if (! WaitToSend(BasePort))
        return FALSE;

    SB_WRITE_DATA(BasePort, SB_GET_DSP_VERSION);

    if (! WaitToReceive(BasePort))
        return FALSE;

    DSP_Major = SB_READ_DATA(BasePort);
    DSP_Minor = SB_READ_DATA(BasePort);

    DPRINT("DSP v%d.%d\n", DSP_Major, DSP_Minor);



    if (DSP_Major == 0xFF && DSP_Minor == 0xFF)
        return FALSE;

    DPRINT("Sound card initialized!\n");

    return (DSP_Major * 256) + DSP_Minor;
}
