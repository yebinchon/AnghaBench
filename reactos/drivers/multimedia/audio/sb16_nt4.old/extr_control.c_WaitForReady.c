
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int UCHAR ;
typedef int PSOUND_BLASTER_PARAMETERS ;
typedef int BOOLEAN ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ SB_TIMEOUT ;
 int SbRead (int ,int ) ;
 int TRUE ;

BOOLEAN
WaitForReady(
    PSOUND_BLASTER_PARAMETERS SBDevice,
    UCHAR Port)
{
    ULONG timeout = SB_TIMEOUT;
    BOOL ready = FALSE;

    while ( ( ! ready ) && ( timeout > 0 ) )
    {
        if ( SbRead(SBDevice, Port) & 0x80 )
            return TRUE;

        timeout --;
    }

    return FALSE;
}
