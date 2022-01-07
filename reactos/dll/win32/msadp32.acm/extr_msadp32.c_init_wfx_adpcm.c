
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {scalar_t__ wFormatTag; int nSamplesPerSec; int nBlockAlign; int nChannels; int cbSize; int nAvgBytesPerSec; } ;
typedef TYPE_1__ WAVEFORMATEX ;
struct TYPE_6__ {int wSamplesPerBlock; int wNumCoef; int aCoef; TYPE_1__ wfx; } ;
typedef TYPE_2__ ADPCMWAVEFORMAT ;
typedef int ADPCMCOEFSET ;


 int ADPCM_GetFormatIndex (TYPE_1__*) ;
 int FIXME (char*) ;
 int MSADPCM_CoeffSet ;
 scalar_t__ WAVE_FORMAT_ADPCM ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void init_wfx_adpcm(ADPCMWAVEFORMAT* awfx)
{
    register WAVEFORMATEX* pwfx = &awfx->wfx;




    if (pwfx->wFormatTag != WAVE_FORMAT_ADPCM) {FIXME("wrong FT\n"); return;}
    if (ADPCM_GetFormatIndex(pwfx) == 0xFFFFFFFF) {FIXME("wrong fmt\n"); return;}

    switch (pwfx->nSamplesPerSec)
    {
    case 8000: pwfx->nBlockAlign = 256 * pwfx->nChannels; break;
    case 11025: pwfx->nBlockAlign = 256 * pwfx->nChannels; break;
    case 22050: pwfx->nBlockAlign = 512 * pwfx->nChannels; break;
    case 44100: pwfx->nBlockAlign = 1024 * pwfx->nChannels; break;
    default: break;
    }
    pwfx->cbSize = 2 * sizeof(WORD) + 7 * sizeof(ADPCMCOEFSET);


    awfx->wSamplesPerBlock = pwfx->nBlockAlign * 2 / pwfx->nChannels - 12;
    pwfx->nAvgBytesPerSec = (pwfx->nSamplesPerSec * pwfx->nBlockAlign) / awfx->wSamplesPerBlock;
    awfx->wNumCoef = 7;
    memcpy(awfx->aCoef, MSADPCM_CoeffSet, 7 * sizeof(ADPCMCOEFSET));
}
