
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PSOUND_BLASTER_PARAMETERS ;
typedef int BOOLEAN ;


 int DPRINT (char*) ;
 int FALSE ;
 scalar_t__ SB_DSP_READY ;
 int SB_TIMEOUT ;
 scalar_t__ SbReadDataWithoutWait (int ) ;
 int SbWriteReset (int ,int) ;
 int TRUE ;
 int WaitToRead (int ) ;

BOOLEAN
ResetSoundBlaster(
    PSOUND_BLASTER_PARAMETERS SBDevice)
{
    BOOLEAN acked = FALSE;
    ULONG timeout;

    SbWriteReset(SBDevice, 0x01);
    for (timeout = 0; timeout < 30000; timeout ++ );
    SbWriteReset(SBDevice, 0x00);

    DPRINT("Waiting for SB to acknowledge our reset request\n");

    if ( ! WaitToRead(SBDevice) )
    {
        DPRINT("Didn't get an ACK :(\n");
        return FALSE;
    }

    timeout = 0;

    while ( ( ! acked ) && ( timeout < SB_TIMEOUT ) )
    {
        acked = ( SbReadDataWithoutWait(SBDevice) == SB_DSP_READY );
        timeout ++;
    }

    if ( ! acked )
    {
        DPRINT("Didn't get an ACK :(\n");
        return FALSE;
    }

    return TRUE;
}
