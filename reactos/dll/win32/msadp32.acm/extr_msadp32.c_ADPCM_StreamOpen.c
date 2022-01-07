
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ wFormatTag; scalar_t__ nSamplesPerSec; unsigned int nChannels; unsigned int nBlockAlign; int wBitsPerSample; } ;
struct TYPE_12__ {int convert; } ;
struct TYPE_11__ {unsigned int wSamplesPerBlock; } ;
struct TYPE_10__ {int fdwOpen; long dwDriver; TYPE_9__* pwfxSrc; TYPE_9__* pwfxDst; } ;
typedef TYPE_1__* PACMDRVSTREAMINSTANCE ;
typedef int LRESULT ;
typedef TYPE_2__ IMAADPCMWAVEFORMAT ;
typedef long DWORD_PTR ;
typedef TYPE_3__ AcmAdpcmData ;


 int ACMERR_NOTPOSSIBLE ;
 int ACM_STREAMOPENF_ASYNC ;
 int ADPCM_GetFormatIndex (TYPE_9__*) ;
 int ADPCM_Reset (TYPE_1__*,TYPE_3__*) ;
 int FIXME (char*,...) ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOMEM ;
 int MMSYSERR_NOTSUPPORTED ;
 scalar_t__ WAVE_FORMAT_ADPCM ;
 scalar_t__ WAVE_FORMAT_PCM ;
 int assert (int) ;
 int cvtMM16msK ;
 int cvtMMms16K ;
 int cvtSS16msK ;
 int cvtSSms16K ;
 int nspb ;

__attribute__((used)) static LRESULT ADPCM_StreamOpen(PACMDRVSTREAMINSTANCE adsi)
{
    AcmAdpcmData* aad;

    assert(!(adsi->fdwOpen & ACM_STREAMOPENF_ASYNC));

    if (ADPCM_GetFormatIndex(adsi->pwfxSrc) == 0xFFFFFFFF ||
 ADPCM_GetFormatIndex(adsi->pwfxDst) == 0xFFFFFFFF)
 return ACMERR_NOTPOSSIBLE;

    aad = HeapAlloc(GetProcessHeap(), 0, sizeof(AcmAdpcmData));
    if (aad == 0) return MMSYSERR_NOMEM;

    adsi->dwDriver = (DWORD_PTR)aad;

    if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
 adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
    {
 goto theEnd;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ADPCM &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
    {

 if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
     adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels)
     goto theEnd;
 if (adsi->pwfxDst->nChannels == 2)
     aad->convert = cvtSSms16K;
 else if (adsi->pwfxDst->nChannels == 1)
     aad->convert = cvtMMms16K;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ADPCM)
    {
 if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
     adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxSrc->wBitsPerSample != 16)
     goto theEnd;
        FIXME("We don't support encoding yet\n");
        goto theEnd;
    }
    else goto theEnd;
    ADPCM_Reset(adsi, aad);

    return MMSYSERR_NOERROR;

 theEnd:
    HeapFree(GetProcessHeap(), 0, aad);
    adsi->dwDriver = 0L;
    return MMSYSERR_NOTSUPPORTED;
}
