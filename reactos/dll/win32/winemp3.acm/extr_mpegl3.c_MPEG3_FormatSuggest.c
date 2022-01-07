
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nChannels; int nSamplesPerSec; int wBitsPerSample; scalar_t__ wFormatTag; int nBlockAlign; int nAvgBytesPerSec; } ;
struct TYPE_4__ {int cbwfxSrc; int cbwfxDst; int fdwSuggest; TYPE_2__* pwfxDst; TYPE_2__* pwfxSrc; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMDRVFORMATSUGGEST ;
typedef int LRESULT ;


 int ACMERR_NOTPOSSIBLE ;
 int ACM_FORMATSUGGESTF_NCHANNELS ;
 int ACM_FORMATSUGGESTF_NSAMPLESPERSEC ;
 int ACM_FORMATSUGGESTF_WBITSPERSAMPLE ;
 int ACM_FORMATSUGGESTF_WFORMATTAG ;
 int FIXME (char*) ;
 int MMSYSERR_NOERROR ;
 int MPEG3_GetFormatIndex (TYPE_2__*) ;
 int WARN (char*) ;




__attribute__((used)) static LRESULT MPEG3_FormatSuggest(PACMDRVFORMATSUGGEST adfs)
{

    if (adfs->cbwfxSrc < sizeof(PCMWAVEFORMAT) ||
 adfs->cbwfxDst < sizeof(PCMWAVEFORMAT) ||
 MPEG3_GetFormatIndex(adfs->pwfxSrc) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;



    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NCHANNELS))
 adfs->pwfxDst->nChannels = adfs->pwfxSrc->nChannels;
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NSAMPLESPERSEC))
        adfs->pwfxDst->nSamplesPerSec = adfs->pwfxSrc->nSamplesPerSec;
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WBITSPERSAMPLE))
        adfs->pwfxDst->wBitsPerSample = 16;
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WFORMATTAG))
    {
 if (adfs->pwfxSrc->wFormatTag == 128)
        {
            WARN("Encoding to MPEG is not supported\n");
            return ACMERR_NOTPOSSIBLE;
        }
        else
            adfs->pwfxDst->wFormatTag = 128;
    }


    if (MPEG3_GetFormatIndex(adfs->pwfxDst) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;


    switch (adfs->pwfxDst->wFormatTag)
    {
    case 128:
        adfs->pwfxDst->nBlockAlign = (adfs->pwfxDst->nChannels * adfs->pwfxDst->wBitsPerSample) / 8;
        adfs->pwfxDst->nAvgBytesPerSec = adfs->pwfxDst->nSamplesPerSec * adfs->pwfxDst->nBlockAlign;
        break;
    case 130:
    case 129:
        WARN("Encoding to MPEG is not supported\n");
        return ACMERR_NOTPOSSIBLE;
        break;
    default:
        FIXME("\n");
        break;
    }

    return MMSYSERR_NOERROR;
}
