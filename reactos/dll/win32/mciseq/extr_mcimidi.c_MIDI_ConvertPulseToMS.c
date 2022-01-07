
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nDivision; scalar_t__ dwTempo; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
typedef int DWORD ;


 int FIXME (char*) ;
 scalar_t__ HIBYTE (int) ;
 int LOBYTE (int) ;

__attribute__((used)) static DWORD MIDI_ConvertPulseToMS(WINE_MCIMIDI* wmm, DWORD pulse)
{
    DWORD ret = 0;




    if (wmm->nDivision == 0) {
 FIXME("Shouldn't happen. wmm->nDivision = 0\n");
    } else if (wmm->nDivision > 0x8000) {
 int nf = -(char)HIBYTE(wmm->nDivision);
 int nsf = LOBYTE(wmm->nDivision);
 ret = (pulse * 1000) / (nf * nsf);
    } else {
 ret = (DWORD)((double)pulse * ((double)wmm->dwTempo / 1000) /
        (double)wmm->nDivision);
    }






    return ret;
}
