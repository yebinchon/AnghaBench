
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_7__ {int wFormatTag; int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; int cbSize; } ;
struct TYPE_6__ {int wSamplesPerBlock; } ;
struct TYPE_5__ {int dwFormatTag; size_t dwFormatIndex; scalar_t__* szFormat; int fdwSupport; TYPE_3__* pwfx; } ;
typedef TYPE_1__* PACMFORMATDETAILSW ;
typedef int LRESULT ;
typedef TYPE_2__ GSM610WAVEFORMAT ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int ACMERR_NOTPOSSIBLE ;


 size_t ARRAY_SIZE (void**) ;
 int GSM_FormatValidate (TYPE_3__*) ;
 int MMSYSERR_INVALPARAM ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 int WARN (char*,int) ;


 void** gsm_rates ;

__attribute__((used)) static LRESULT GSM_FormatDetails(PACMFORMATDETAILSW afd, DWORD dwQuery)
{
    switch (dwQuery)
    {
    case 131:
 if (!GSM_FormatValidate(afd->pwfx)) return ACMERR_NOTPOSSIBLE;
 break;
    case 130:
 afd->pwfx->wFormatTag = afd->dwFormatTag;
 switch (afd->dwFormatTag)
        {
 case 128:
     if (afd->dwFormatIndex >= ARRAY_SIZE(gsm_rates)) return ACMERR_NOTPOSSIBLE;
     afd->pwfx->nChannels = 1;
     afd->pwfx->nSamplesPerSec = gsm_rates[afd->dwFormatIndex];
     afd->pwfx->wBitsPerSample = 16;
     afd->pwfx->nBlockAlign = 2;
     afd->pwfx->nAvgBytesPerSec = afd->pwfx->nSamplesPerSec * afd->pwfx->nBlockAlign;
     break;
 case 129:
     if (afd->dwFormatIndex >= ARRAY_SIZE(gsm_rates)) return ACMERR_NOTPOSSIBLE;
     afd->pwfx->nChannels = 1;
     afd->pwfx->nSamplesPerSec = gsm_rates[afd->dwFormatIndex];
     afd->pwfx->wBitsPerSample = 0;
     afd->pwfx->nBlockAlign = 65;
            afd->pwfx->nAvgBytesPerSec = afd->pwfx->nSamplesPerSec * 65 / 320;
            afd->pwfx->cbSize = sizeof(WORD);
            ((GSM610WAVEFORMAT*)afd->pwfx)->wSamplesPerBlock = 320;
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
