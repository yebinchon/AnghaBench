
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwFlags; } ;
typedef int MIDIMAPDATA ;
typedef TYPE_1__* LPMIDIHDR ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int MHDR_ISSTRM ;
 int MHDR_PREPARED ;
 scalar_t__ MIDIMAP_IsBadData (int *) ;
 int MMSYSERR_ERROR ;
 int MMSYSERR_INVALPARAM ;
 int MMSYSERR_NOERROR ;

__attribute__((used)) static DWORD modUnprepare(MIDIMAPDATA* mom, LPMIDIHDR lpMidiHdr, DWORD_PTR dwParam2)
{
    if (MIDIMAP_IsBadData(mom)) return MMSYSERR_ERROR;
    if ((lpMidiHdr->dwFlags & MHDR_ISSTRM) || !(lpMidiHdr->dwFlags & MHDR_PREPARED))
 return MMSYSERR_INVALPARAM;

    lpMidiHdr->dwFlags &= ~MHDR_PREPARED;
    return MMSYSERR_NOERROR;
}
