
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {TYPE_1__** ChannelMap; } ;
struct TYPE_5__ {scalar_t__ loaded; int hMidi; } ;
typedef TYPE_2__ MIDIMAPDATA ;
typedef scalar_t__ DWORD ;


 scalar_t__ MIDIMAP_IsBadData (TYPE_2__*) ;
 scalar_t__ MMSYSERR_ERROR ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ midiOutReset (int ) ;

__attribute__((used)) static DWORD modReset(MIDIMAPDATA* mom)
{
    WORD chn;
    DWORD ret = MMSYSERR_NOERROR;

    if (MIDIMAP_IsBadData(mom))
 return MMSYSERR_ERROR;

    for (chn = 0; chn < 16; chn++)
    {
 if (mom->ChannelMap[chn] && mom->ChannelMap[chn]->loaded > 0)
 {
     ret = midiOutReset(mom->ChannelMap[chn]->hMidi);
     if (ret != MMSYSERR_NOERROR) break;
 }
    }
    return ret;
}
