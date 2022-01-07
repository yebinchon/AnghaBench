
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int wFormatTag; int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; } ;
struct TYPE_6__ {int nChannels; int rate; int nBits; } ;
struct TYPE_5__ {int dwFormatTag; size_t dwFormatIndex; scalar_t__* szFormat; int fdwSupport; TYPE_3__* pwfx; } ;
typedef TYPE_1__* PACMFORMATDETAILSW ;
typedef int LRESULT ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int ACMERR_NOTPOSSIBLE ;


 int MMSYSERR_INVALPARAM ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 int MPEG3_GetFormatIndex (TYPE_3__*) ;
 size_t NUM_PCM_FORMATS ;
 TYPE_2__* PCM_Formats ;
 int WARN (char*,...) ;




__attribute__((used)) static LRESULT MPEG3_FormatDetails(PACMFORMATDETAILSW afd, DWORD dwQuery)
{
    switch (dwQuery)
    {
    case 132:
 if (MPEG3_GetFormatIndex(afd->pwfx) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;
 break;
    case 131:
 afd->pwfx->wFormatTag = afd->dwFormatTag;
 switch (afd->dwFormatTag)
        {
 case 128:
     if (afd->dwFormatIndex >= NUM_PCM_FORMATS) return ACMERR_NOTPOSSIBLE;
     afd->pwfx->nChannels = PCM_Formats[afd->dwFormatIndex].nChannels;
     afd->pwfx->nSamplesPerSec = PCM_Formats[afd->dwFormatIndex].rate;
     afd->pwfx->wBitsPerSample = PCM_Formats[afd->dwFormatIndex].nBits;



     afd->pwfx->nBlockAlign =
  (afd->pwfx->nChannels * afd->pwfx->wBitsPerSample) / 8;
     afd->pwfx->nAvgBytesPerSec =
  afd->pwfx->nSamplesPerSec * afd->pwfx->nBlockAlign;
     break;
 case 129:
 case 130:
            WARN("Encoding to MPEG is not supported\n");
            return ACMERR_NOTPOSSIBLE;
 default:
            WARN("Unsupported tag %08x\n", afd->dwFormatTag);
     return MMSYSERR_INVALPARAM;
 }
 break;
    default:
 WARN("Unsupported query %08x\n", dwQuery);
 return MMSYSERR_NOTSUPPORTED;
    }
    afd->fdwSupport = ACMDRIVERDETAILS_SUPPORTF_CODEC;
    afd->szFormat[0] = 0;

    return MMSYSERR_NOERROR;
}
