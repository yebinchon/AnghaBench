
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PSOUND_BLASTER_PARAMETERS ;
typedef int BOOLEAN ;


 int DPRINT (char*,int ) ;
 int FALSE ;
 int SB_WRITE_DATA_PORT ;
 int SbWrite (int ,int ,int ) ;
 int TRUE ;
 int WaitToWrite (int ) ;

BOOLEAN
SbWriteData(
    PSOUND_BLASTER_PARAMETERS SBDevice,
    UCHAR Data)
{
    if ( ! WaitToWrite(SBDevice) )
        return FALSE;

    DPRINT("Writing 0x%x to Sound Blaster card (data)\n", Data);
    SbWrite(SBDevice, SB_WRITE_DATA_PORT, Data);

    return TRUE;
}
