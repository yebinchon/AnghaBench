
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int wFormatTag; int nChannels; int nSamplesPerSec; int nBlockAlign; int nAvgBytesPerSec; int cbSize; int wBitsPerSample; } ;
struct TYPE_9__ {int nChannels; int rate; int nBits; } ;
struct TYPE_8__ {int dwFormatTag; size_t dwFormatIndex; scalar_t__* szFormat; int fdwSupport; TYPE_4__* pwfx; } ;
typedef TYPE_1__* PACMFORMATDETAILSW ;
typedef int LRESULT ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int ACMERR_NOTPOSSIBLE ;


 TYPE_2__* ALaw_Formats ;
 size_t ARRAY_SIZE (TYPE_2__*) ;
 int G711_GetFormatIndex (TYPE_4__*) ;
 int MMSYSERR_INVALPARAM ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 TYPE_2__* PCM_Formats ;
 TYPE_2__* ULaw_Formats ;
 int WARN (char*,int) ;




__attribute__((used)) static LRESULT G711_FormatDetails(PACMFORMATDETAILSW afd, DWORD dwQuery)
{
    switch (dwQuery)
    {
    case 132:
 if (G711_GetFormatIndex(afd->pwfx) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;
 break;
    case 131:
 afd->pwfx->wFormatTag = afd->dwFormatTag;
 switch (afd->dwFormatTag)
        {
 case 128:
     if (afd->dwFormatIndex >= ARRAY_SIZE(PCM_Formats)) return ACMERR_NOTPOSSIBLE;
     afd->pwfx->nChannels = PCM_Formats[afd->dwFormatIndex].nChannels;
     afd->pwfx->nSamplesPerSec = PCM_Formats[afd->dwFormatIndex].rate;
     afd->pwfx->wBitsPerSample = PCM_Formats[afd->dwFormatIndex].nBits;
     afd->pwfx->nBlockAlign = afd->pwfx->nChannels * 2;
     afd->pwfx->nAvgBytesPerSec = afd->pwfx->nSamplesPerSec * afd->pwfx->nBlockAlign;
     break;
 case 130:
     if (afd->dwFormatIndex >= ARRAY_SIZE(ALaw_Formats)) return ACMERR_NOTPOSSIBLE;
     afd->pwfx->nChannels = ALaw_Formats[afd->dwFormatIndex].nChannels;
     afd->pwfx->nSamplesPerSec = ALaw_Formats[afd->dwFormatIndex].rate;
     afd->pwfx->wBitsPerSample = ALaw_Formats[afd->dwFormatIndex].nBits;
     afd->pwfx->nBlockAlign = ALaw_Formats[afd->dwFormatIndex].nChannels;
     afd->pwfx->nAvgBytesPerSec = afd->pwfx->nSamplesPerSec * afd->pwfx->nChannels;
            afd->pwfx->cbSize = 0;
     break;
 case 129:
     if (afd->dwFormatIndex >= ARRAY_SIZE(ULaw_Formats)) return ACMERR_NOTPOSSIBLE;
     afd->pwfx->nChannels = ULaw_Formats[afd->dwFormatIndex].nChannels;
     afd->pwfx->nSamplesPerSec = ULaw_Formats[afd->dwFormatIndex].rate;
     afd->pwfx->wBitsPerSample = ULaw_Formats[afd->dwFormatIndex].nBits;
     afd->pwfx->nBlockAlign = ULaw_Formats[afd->dwFormatIndex].nChannels;
     afd->pwfx->nAvgBytesPerSec = afd->pwfx->nSamplesPerSec * afd->pwfx->nChannels;
            afd->pwfx->cbSize = 0;
     break;
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
