
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mh ;
typedef int WORD ;
struct TYPE_13__ {scalar_t__ dwFlags; } ;
struct TYPE_12__ {TYPE_1__** ChannelMap; } ;
struct TYPE_11__ {scalar_t__ loaded; int hMidi; } ;
typedef TYPE_2__ MIDIMAPDATA ;
typedef TYPE_3__ MIDIHDR ;
typedef TYPE_3__* LPMIDIHDR ;
typedef int DWORD_PTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ MIDIMAP_IsBadData (TYPE_2__*) ;
 scalar_t__ MMSYSERR_ERROR ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ midiOutLongMsg (int ,TYPE_3__*,int) ;
 int midiOutPrepareHeader (int ,TYPE_3__*,int) ;
 int midiOutUnprepareHeader (int ,TYPE_3__*,int) ;

__attribute__((used)) static DWORD modLongData(MIDIMAPDATA* mom, LPMIDIHDR lpMidiHdr, DWORD_PTR dwParam2)
{
    WORD chn;
    DWORD ret = MMSYSERR_NOERROR;
    MIDIHDR mh;

    if (MIDIMAP_IsBadData(mom))
 return MMSYSERR_ERROR;

    mh = *lpMidiHdr;
    for (chn = 0; chn < 16; chn++)
    {
 if (mom->ChannelMap[chn] && mom->ChannelMap[chn]->loaded > 0)
 {
     mh.dwFlags = 0;
     midiOutPrepareHeader(mom->ChannelMap[chn]->hMidi, &mh, sizeof(mh));
     ret = midiOutLongMsg(mom->ChannelMap[chn]->hMidi, &mh, sizeof(mh));
     midiOutUnprepareHeader(mom->ChannelMap[chn]->hMidi, &mh, sizeof(mh));
     if (ret != MMSYSERR_NOERROR) break;
 }
    }
    return ret;
}
