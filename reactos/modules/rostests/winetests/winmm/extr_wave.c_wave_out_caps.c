
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ADD_FLAG (int ) ;
 int WAVECAPS_LRVOLUME ;
 int WAVECAPS_PITCH ;
 int WAVECAPS_PLAYBACKRATE ;
 int WAVECAPS_SAMPLEACCURATE ;
 int WAVECAPS_SYNC ;
 int WAVECAPS_VOLUME ;

__attribute__((used)) static const char * wave_out_caps(DWORD dwSupport)
{

    static char msg[256];
    msg[0] = 0;

    if (dwSupport & WAVECAPS_PITCH) strcat(msg, " " "WAVECAPS_PITCH");
    if (dwSupport & WAVECAPS_PLAYBACKRATE) strcat(msg, " " "WAVECAPS_PLAYBACKRATE");
    if (dwSupport & WAVECAPS_VOLUME) strcat(msg, " " "WAVECAPS_VOLUME");
    if (dwSupport & WAVECAPS_LRVOLUME) strcat(msg, " " "WAVECAPS_LRVOLUME");
    if (dwSupport & WAVECAPS_SYNC) strcat(msg, " " "WAVECAPS_SYNC");
    if (dwSupport & WAVECAPS_SAMPLEACCURATE) strcat(msg, " " "WAVECAPS_SAMPLEACCURATE");

    return msg[0] ? msg + 1 : "";

}
