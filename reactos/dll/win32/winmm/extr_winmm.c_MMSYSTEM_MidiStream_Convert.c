
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwTimeDiv; scalar_t__ dwTempo; } ;
typedef TYPE_1__ WINE_MIDIStream ;
typedef int DWORD ;


 int FIXME (char*) ;
 scalar_t__ HIBYTE (int) ;
 int LOBYTE (int) ;

__attribute__((used)) static DWORD MMSYSTEM_MidiStream_Convert(WINE_MIDIStream* lpMidiStrm, DWORD pulse)
{
    DWORD ret = 0;

    if (lpMidiStrm->dwTimeDiv == 0) {
 FIXME("Shouldn't happen. lpMidiStrm->dwTimeDiv = 0\n");
    } else if (lpMidiStrm->dwTimeDiv > 0x8000) {
 int nf = -(char)HIBYTE(lpMidiStrm->dwTimeDiv);
 int nsf = LOBYTE(lpMidiStrm->dwTimeDiv);
 ret = (pulse * 1000) / (nf * nsf);
    } else {
 ret = (DWORD)((double)pulse * ((double)lpMidiStrm->dwTempo / 1000) /
        (double)lpMidiStrm->dwTimeDiv);
    }

    return ret;
}
