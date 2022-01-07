
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nChannels; int nSamplesPerSec; int nAvgBytesPerSec; int nBlockAlign; int wBitsPerSample; scalar_t__ cbSize; int wFormatTag; } ;
struct TYPE_5__ {TYPE_1__* lpWaveFormat; TYPE_1__ wfxRef; } ;
typedef TYPE_2__ WINE_MCIWAVE ;


 int WAVE_FORMAT_PCM ;

__attribute__((used)) static void WAVE_mciDefaultFmt(WINE_MCIWAVE* wmw)
{
    wmw->lpWaveFormat = &wmw->wfxRef;
    wmw->lpWaveFormat->wFormatTag = WAVE_FORMAT_PCM;
    wmw->lpWaveFormat->nChannels = 1;
    wmw->lpWaveFormat->nSamplesPerSec = 11025;
    wmw->lpWaveFormat->nAvgBytesPerSec = 11025;
    wmw->lpWaveFormat->nBlockAlign = 1;
    wmw->lpWaveFormat->wBitsPerSample = 8;
    wmw->lpWaveFormat->cbSize = 0;
}
