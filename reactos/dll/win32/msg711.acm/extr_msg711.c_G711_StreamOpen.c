
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ wFormatTag; scalar_t__ nSamplesPerSec; scalar_t__ nChannels; int wBitsPerSample; } ;
struct TYPE_10__ {int convert; } ;
struct TYPE_9__ {int fdwOpen; long dwDriver; TYPE_8__* pwfxDst; TYPE_8__* pwfxSrc; } ;
typedef TYPE_1__* PACMDRVSTREAMINSTANCE ;
typedef int LRESULT ;
typedef long DWORD_PTR ;
typedef TYPE_2__ AcmG711Data ;


 int ACMERR_NOTPOSSIBLE ;
 int ACM_STREAMOPENF_ASYNC ;
 int G711_GetFormatIndex (TYPE_8__*) ;
 int G711_Reset (TYPE_1__*,TYPE_2__*) ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOMEM ;
 int MMSYSERR_NOTSUPPORTED ;
 scalar_t__ WAVE_FORMAT_ALAW ;
 scalar_t__ WAVE_FORMAT_MULAW ;
 scalar_t__ WAVE_FORMAT_PCM ;
 int assert (int) ;
 int cvtXX16alawK ;
 int cvtXX16ulawK ;
 int cvtXXalaw16K ;
 int cvtXXalawulawK ;
 int cvtXXulaw16K ;
 int cvtXXulawalawK ;

__attribute__((used)) static LRESULT G711_StreamOpen(PACMDRVSTREAMINSTANCE adsi)
{
    AcmG711Data* aad;

    assert(!(adsi->fdwOpen & ACM_STREAMOPENF_ASYNC));

    if (G711_GetFormatIndex(adsi->pwfxSrc) == 0xFFFFFFFF ||
 G711_GetFormatIndex(adsi->pwfxDst) == 0xFFFFFFFF)
 return ACMERR_NOTPOSSIBLE;

    aad = HeapAlloc(GetProcessHeap(), 0, sizeof(AcmG711Data));
    if (aad == 0) return MMSYSERR_NOMEM;

    adsi->dwDriver = (DWORD_PTR)aad;

    if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
 adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
    {
 goto theEnd;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ALAW &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
    {



 if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
     adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxDst->wBitsPerSample != 16)
     goto theEnd;


 if (adsi->pwfxDst->wBitsPerSample == 16)
     aad->convert = cvtXXalaw16K;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ALAW)
    {
 if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
     adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxSrc->wBitsPerSample != 16)
     goto theEnd;


 if (adsi->pwfxSrc->wBitsPerSample == 16)
     aad->convert = cvtXX16alawK;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_MULAW &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
    {



 if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
     adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxDst->wBitsPerSample != 16)
     goto theEnd;


 if (adsi->pwfxDst->wBitsPerSample == 16)
     aad->convert = cvtXXulaw16K;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_MULAW)
    {
 if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
     adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxSrc->wBitsPerSample != 16)
     goto theEnd;


 if (adsi->pwfxSrc->wBitsPerSample == 16)
     aad->convert = cvtXX16ulawK;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_MULAW &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ALAW)
    {
 if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
     adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels)
     goto theEnd;


        aad->convert = cvtXXulawalawK;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ALAW &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_MULAW)
    {
 if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
     adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels)
     goto theEnd;


        aad->convert = cvtXXalawulawK;
    }
    else goto theEnd;

    G711_Reset(adsi, aad);

    return MMSYSERR_NOERROR;

 theEnd:
    HeapFree(GetProcessHeap(), 0, aad);
    adsi->dwDriver = 0L;
    return MMSYSERR_NOTSUPPORTED;
}
