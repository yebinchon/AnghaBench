
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_6__ {size_t nTracks; int wFormat; TYPE_1__* tracks; } ;
typedef TYPE_2__ WINE_MCIMIDI ;
struct TYPE_5__ {scalar_t__ dwLength; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ MIDI_ConvertPulseToMS (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static DWORD MIDI_GetMThdLengthMS(WINE_MCIMIDI* wmm)
{
    WORD nt;
    DWORD ret = 0;

    for (nt = 0; nt < wmm->nTracks; nt++) {
 if (wmm->wFormat == 2) {
     ret += wmm->tracks[nt].dwLength;
 } else if (wmm->tracks[nt].dwLength > ret) {
     ret = wmm->tracks[nt].dwLength;
 }
    }

    return MIDI_ConvertPulseToMS(wmm, ret);
}
