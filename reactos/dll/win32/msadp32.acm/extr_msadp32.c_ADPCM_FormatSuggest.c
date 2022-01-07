
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ wFormatTag; int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; } ;
struct TYPE_4__ {int cbwfxSrc; int cbwfxDst; int fdwSuggest; TYPE_2__* pwfxDst; TYPE_2__* pwfxSrc; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMDRVFORMATSUGGEST ;
typedef int LRESULT ;
typedef int ADPCMWAVEFORMAT ;
typedef int ADPCMCOEFSET ;


 int ACMERR_NOTPOSSIBLE ;
 int ACM_FORMATSUGGESTF_NCHANNELS ;
 int ACM_FORMATSUGGESTF_NSAMPLESPERSEC ;
 int ACM_FORMATSUGGESTF_WBITSPERSAMPLE ;
 int ACM_FORMATSUGGESTF_WFORMATTAG ;
 int ADPCM_GetFormatIndex (TYPE_2__*) ;
 int MMSYSERR_NOERROR ;


 int init_wfx_adpcm (int *) ;

__attribute__((used)) static LRESULT ADPCM_FormatSuggest(PACMDRVFORMATSUGGEST adfs)
{

    if (adfs->cbwfxSrc < sizeof(PCMWAVEFORMAT) ||
 adfs->cbwfxDst < sizeof(PCMWAVEFORMAT) ||
 adfs->pwfxSrc->wFormatTag == adfs->pwfxDst->wFormatTag ||
 ADPCM_GetFormatIndex(adfs->pwfxSrc) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;



    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NCHANNELS))
 adfs->pwfxDst->nChannels = adfs->pwfxSrc->nChannels;
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NSAMPLESPERSEC))
        adfs->pwfxDst->nSamplesPerSec = adfs->pwfxSrc->nSamplesPerSec;

    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WBITSPERSAMPLE))
    {
 if (adfs->pwfxSrc->wFormatTag == 128)
            adfs->pwfxDst->wBitsPerSample = 4;
        else
            adfs->pwfxDst->wBitsPerSample = 16;
    }
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WFORMATTAG))
    {
 if (adfs->pwfxSrc->wFormatTag == 128)
            adfs->pwfxDst->wFormatTag = 129;
        else
            adfs->pwfxDst->wFormatTag = 128;
    }


    switch (adfs->pwfxDst->wFormatTag)
    {
    case 128:
        adfs->pwfxDst->nBlockAlign = (adfs->pwfxDst->nChannels * adfs->pwfxDst->wBitsPerSample) / 8;
        adfs->pwfxDst->nAvgBytesPerSec = adfs->pwfxDst->nSamplesPerSec * adfs->pwfxDst->nBlockAlign;

        if (ADPCM_GetFormatIndex(adfs->pwfxDst) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;
        break;
    case 129:
        if (adfs->cbwfxDst < sizeof(ADPCMWAVEFORMAT) + (7 - 1) * sizeof(ADPCMCOEFSET))
            return ACMERR_NOTPOSSIBLE;
        init_wfx_adpcm((ADPCMWAVEFORMAT*)adfs->pwfxDst);

        if (ADPCM_GetFormatIndex(adfs->pwfxDst) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;
        break;
    default:
        return ACMERR_NOTPOSSIBLE;
    }

    return MMSYSERR_NOERROR;
}
