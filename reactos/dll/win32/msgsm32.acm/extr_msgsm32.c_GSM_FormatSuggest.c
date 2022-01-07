
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_7__ {int nSamplesPerSec; int wFormatTag; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; int cbSize; int nChannels; } ;
struct TYPE_6__ {int wSamplesPerBlock; } ;
struct TYPE_5__ {int cbwfxSrc; int cbwfxDst; int fdwSuggest; TYPE_3__* pwfxDst; TYPE_3__* pwfxSrc; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMDRVFORMATSUGGEST ;
typedef int LRESULT ;
typedef TYPE_2__ GSM610WAVEFORMAT ;


 int ACMERR_NOTPOSSIBLE ;
 int ACM_FORMATSUGGESTF_NCHANNELS ;
 int ACM_FORMATSUGGESTF_NSAMPLESPERSEC ;
 int ACM_FORMATSUGGESTF_WBITSPERSAMPLE ;
 int ACM_FORMATSUGGESTF_WFORMATTAG ;
 int GSM_FormatValidate (TYPE_3__*) ;
 int MMSYSERR_NOERROR ;



__attribute__((used)) static LRESULT GSM_FormatSuggest(PACMDRVFORMATSUGGEST adfs)
{

    if (adfs->cbwfxSrc < sizeof(PCMWAVEFORMAT) ||
 adfs->cbwfxDst < sizeof(PCMWAVEFORMAT) ||
 !GSM_FormatValidate(adfs->pwfxSrc)) return ACMERR_NOTPOSSIBLE;



    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NCHANNELS))
 adfs->pwfxDst->nChannels = adfs->pwfxSrc->nChannels;
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NSAMPLESPERSEC))
        adfs->pwfxDst->nSamplesPerSec = adfs->pwfxSrc->nSamplesPerSec;

    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WBITSPERSAMPLE))
    {
 if (adfs->pwfxSrc->wFormatTag == 128)
            adfs->pwfxDst->wBitsPerSample = 0;
        else
            adfs->pwfxDst->wBitsPerSample = 16;
    }
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WFORMATTAG))
    {
 switch (adfs->pwfxSrc->wFormatTag)
        {
        case 128: adfs->pwfxDst->wFormatTag = 129; break;
        case 129: adfs->pwfxDst->wFormatTag = 128; break;
        }
    }


    switch (adfs->pwfxDst->wFormatTag)
    {
    case 128:
        adfs->pwfxDst->nBlockAlign = 2;
        adfs->pwfxDst->nAvgBytesPerSec = adfs->pwfxDst->nSamplesPerSec * 2;
        break;
    case 129:
        if (adfs->pwfxDst->cbSize < sizeof(WORD))
            return ACMERR_NOTPOSSIBLE;
        adfs->pwfxDst->nBlockAlign = 65;
        adfs->pwfxDst->nAvgBytesPerSec = adfs->pwfxDst->nSamplesPerSec * 65 / 320;
        ((GSM610WAVEFORMAT*)adfs->pwfxDst)->wSamplesPerBlock = 320;
        break;
    default:
        return ACMERR_NOTPOSSIBLE;
    }


    if (!GSM_FormatValidate(adfs->pwfxDst)) return ACMERR_NOTPOSSIBLE;
    return MMSYSERR_NOERROR;
}
