
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nChannels; int rate; int nBits; } ;
struct TYPE_8__ {int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; void* wFormatTag; } ;
struct TYPE_7__ {size_t dwFormatIndex; int cbwfx; scalar_t__* szFormat; int fdwSupport; void* dwFormatTag; TYPE_3__* pwfx; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMFORMATDETAILSW ;
typedef int LRESULT ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_CONVERTER ;
 int ACMERR_NOTPOSSIBLE ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 TYPE_4__* PCM_Formats ;
 int PCM_GetFormatIndex (TYPE_3__*) ;
 int TRACE (char*,TYPE_1__*,int) ;
 int WARN (char*,...) ;
 void* WAVE_FORMAT_PCM ;
 int assert (int) ;

__attribute__((used)) static LRESULT PCM_FormatDetails(PACMFORMATDETAILSW afd, DWORD dwQuery)
{
    TRACE("(%p, %08x)\n", afd, dwQuery);

    switch (dwQuery) {
    case 129:
 if (PCM_GetFormatIndex(afd->pwfx) == 0xFFFFFFFF) {
            WARN("not possible\n");
            return ACMERR_NOTPOSSIBLE;
        }
 break;
    case 128:
 assert(afd->dwFormatIndex < ARRAY_SIZE(PCM_Formats));
 afd->pwfx->wFormatTag = WAVE_FORMAT_PCM;
 afd->pwfx->nChannels = PCM_Formats[afd->dwFormatIndex].nChannels;
 afd->pwfx->nSamplesPerSec = PCM_Formats[afd->dwFormatIndex].rate;
 afd->pwfx->wBitsPerSample = PCM_Formats[afd->dwFormatIndex].nBits;



 afd->pwfx->nBlockAlign =
     (afd->pwfx->nChannels * afd->pwfx->wBitsPerSample) / 8;
 afd->pwfx->nAvgBytesPerSec =
     afd->pwfx->nSamplesPerSec * afd->pwfx->nBlockAlign;
 break;
    default:
 WARN("Unsupported query %08x\n", dwQuery);
 return MMSYSERR_NOTSUPPORTED;
    }

    afd->dwFormatTag = WAVE_FORMAT_PCM;
    afd->fdwSupport = ACMDRIVERDETAILS_SUPPORTF_CONVERTER;
    afd->szFormat[0] = 0;
    afd->cbwfx = sizeof(PCMWAVEFORMAT);

    return MMSYSERR_NOERROR;
}
