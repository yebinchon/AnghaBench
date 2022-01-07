
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSOUND_BLASTER_PARAMETERS ;
typedef int BOOLEAN ;


 int DPRINT (char*) ;
 int SbEnableSpeaker ;
 int SbWriteData (int ,int ) ;

BOOLEAN
EnableSpeaker(
    PSOUND_BLASTER_PARAMETERS SBDevice)
{
    DPRINT("Enabling speaker\n");

    return SbWriteData(SBDevice, SbEnableSpeaker);
}
