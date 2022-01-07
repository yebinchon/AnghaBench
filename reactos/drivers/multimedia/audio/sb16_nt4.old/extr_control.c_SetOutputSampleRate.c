
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PSOUND_BLASTER_PARAMETERS ;
typedef int BOOLEAN ;


 int DPRINT (char*) ;
 int SbSetOutputRate ;
 int SbWriteData (int ,int) ;
 int TRUE ;

BOOLEAN
SetOutputSampleRate(
    PSOUND_BLASTER_PARAMETERS SBDevice,
    ULONG SampleRate)
{

    DPRINT("Setting sample rate\n");

    SbWriteData(SBDevice, SbSetOutputRate);
    SbWriteData(SBDevice, SampleRate / 256);
    SbWriteData(SBDevice, SampleRate % 256);

    return TRUE;
}
