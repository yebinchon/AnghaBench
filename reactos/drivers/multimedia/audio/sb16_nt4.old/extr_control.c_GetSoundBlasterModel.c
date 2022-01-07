
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_6__ {int dsp_version; } ;
typedef TYPE_1__* PSOUND_BLASTER_PARAMETERS ;


 int DPRINT (char*,...) ;
 int NotDetected ;
 int SbGetDspVersion ;
 scalar_t__ SbReadData (TYPE_1__*,int*) ;
 int SbWriteData (TYPE_1__*,int ) ;
 int SoundBlaster ;
 int SoundBlaster16 ;
 int SoundBlaster2 ;
 int SoundBlasterPro ;
 int WaitToRead (TYPE_1__*) ;

ULONG
GetSoundBlasterModel(
    PSOUND_BLASTER_PARAMETERS SBDevice)
{
    UCHAR MajorVer, MinorVer;

    DPRINT("Querying DSP version\n");

    if ( ! SbWriteData(SBDevice, SbGetDspVersion) )
        return NotDetected;

    if ( ! WaitToRead(SBDevice) )
        return NotDetected;

    if ( SbReadData(SBDevice, &MajorVer) )
    {
        if ( SbReadData(SBDevice, &MinorVer) )
        {
            DPRINT("Version %d.%d\n", MajorVer, MinorVer);

            SBDevice->dsp_version = (MajorVer * 256) + MinorVer;

            if ( SBDevice->dsp_version < 0x0200 )
                return SoundBlaster;
            else if ( ( SBDevice->dsp_version & 0xFF00 ) == 0x0200 )
                return SoundBlaster2;
            else if ( ( SBDevice->dsp_version & 0xFF00 ) == 0x0300 )
                return SoundBlasterPro;
            else if ( SBDevice->dsp_version >= 0x0400 )
                return SoundBlaster16;

            return NotDetected;
        }
    }

    return NotDetected;
}
