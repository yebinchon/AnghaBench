
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFlags; } ;
typedef int MMRESULT ;
typedef int MIDIHDR ;
typedef TYPE_1__* LPMIDIHDR ;
typedef int HMIDISTRM ;


 int MHDR_DONE ;
 int MHDR_INQUEUE ;
 int Sleep (int) ;
 int midiStreamOut (int ,TYPE_1__*,int) ;

__attribute__((used)) static MMRESULT playStream(HMIDISTRM hm, LPMIDIHDR lpMidiHdr)
{
    MMRESULT rc = midiStreamOut(hm, lpMidiHdr, sizeof(MIDIHDR));


    if (!rc) while (!(lpMidiHdr->dwFlags & MHDR_DONE) || (lpMidiHdr->dwFlags & MHDR_INQUEUE)) { Sleep(100); }
    return rc;
}
