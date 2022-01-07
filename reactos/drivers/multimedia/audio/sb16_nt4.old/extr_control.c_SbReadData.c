
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PUCHAR ;
typedef int PSOUND_BLASTER_PARAMETERS ;
typedef int BOOLEAN ;


 int DPRINT (char*,int ) ;
 int FALSE ;
 int SB_READ_DATA_PORT ;
 int SbRead (int ,int ) ;
 int TRUE ;
 int WaitToWrite (int ) ;

BOOLEAN
SbReadData(
    PSOUND_BLASTER_PARAMETERS SBDevice,
    PUCHAR Data)
{
    if ( ! WaitToWrite(SBDevice) )
        return FALSE;

    *Data = SbRead(SBDevice, SB_READ_DATA_PORT);
    DPRINT("Read 0x%x from Sound Blaster card (data)\n", *Data);

    return TRUE;
}
