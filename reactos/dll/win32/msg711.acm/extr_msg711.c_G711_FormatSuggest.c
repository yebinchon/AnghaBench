
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nChannels; int nSamplesPerSec; int wFormatTag; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; } ;
struct TYPE_4__ {int cbwfxSrc; int cbwfxDst; int fdwSuggest; TYPE_2__* pwfxSrc; TYPE_2__* pwfxDst; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMDRVFORMATSUGGEST ;
typedef int LRESULT ;


 int ACMERR_NOTPOSSIBLE ;
 int ACM_FORMATSUGGESTF_NCHANNELS ;
 int ACM_FORMATSUGGESTF_NSAMPLESPERSEC ;
 int ACM_FORMATSUGGESTF_WBITSPERSAMPLE ;
 int ACM_FORMATSUGGESTF_WFORMATTAG ;
 int G711_GetFormatIndex (TYPE_2__*) ;
 int MMSYSERR_NOERROR ;




__attribute__((used)) static LRESULT G711_FormatSuggest(PACMDRVFORMATSUGGEST adfs)
{

    if (adfs->cbwfxSrc < sizeof(PCMWAVEFORMAT) ||
 adfs->cbwfxDst < sizeof(PCMWAVEFORMAT) ||
 G711_GetFormatIndex(adfs->pwfxSrc) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;



    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NCHANNELS))
 adfs->pwfxDst->nChannels = adfs->pwfxSrc->nChannels;
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NSAMPLESPERSEC))
        adfs->pwfxDst->nSamplesPerSec = adfs->pwfxSrc->nSamplesPerSec;

    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WBITSPERSAMPLE))
    {
 if (adfs->pwfxSrc->wFormatTag == 128)
            adfs->pwfxDst->wBitsPerSample = 8;
        else
            adfs->pwfxDst->wBitsPerSample = 16;
    }
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WFORMATTAG))
    {
 switch (adfs->pwfxSrc->wFormatTag)
        {
        case 128: adfs->pwfxDst->wFormatTag = 130; break;
        case 130: adfs->pwfxDst->wFormatTag = 128; break;
        case 129: adfs->pwfxDst->wFormatTag = 128; break;
        }
    }

    if (G711_GetFormatIndex(adfs->pwfxDst) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;


    switch (adfs->pwfxDst->wFormatTag)
    {
    case 128:
        adfs->pwfxDst->nBlockAlign = adfs->pwfxDst->nChannels * 2;
        adfs->pwfxDst->nAvgBytesPerSec = adfs->pwfxDst->nSamplesPerSec * adfs->pwfxDst->nBlockAlign;
        break;
    case 130:
        adfs->pwfxDst->nBlockAlign = adfs->pwfxDst->nChannels;
        adfs->pwfxDst->nAvgBytesPerSec = adfs->pwfxDst->nSamplesPerSec * adfs->pwfxSrc->nChannels;
        break;
    case 129:
        adfs->pwfxDst->nBlockAlign = adfs->pwfxDst->nChannels;
        adfs->pwfxDst->nAvgBytesPerSec = adfs->pwfxDst->nSamplesPerSec * adfs->pwfxSrc->nChannels;
        break;
    }

    return MMSYSERR_NOERROR;
}
