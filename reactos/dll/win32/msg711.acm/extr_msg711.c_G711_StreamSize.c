
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* pwfxDst; TYPE_1__* pwfxSrc; } ;
struct TYPE_9__ {int fdwSize; int cbSrcLength; int cbDstLength; } ;
struct TYPE_8__ {int wFormatTag; } ;
struct TYPE_7__ {int wFormatTag; } ;
typedef TYPE_3__* PACMDRVSTREAMSIZE ;
typedef int LRESULT ;
typedef TYPE_4__ ACMDRVSTREAMINSTANCE ;




 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 int WARN (char*,int) ;
 int WAVE_FORMAT_ALAW ;
 int WAVE_FORMAT_MULAW ;
 int WAVE_FORMAT_PCM ;

__attribute__((used)) static LRESULT G711_StreamSize(const ACMDRVSTREAMINSTANCE *adsi, PACMDRVSTREAMSIZE adss)
{
    switch (adss->fdwSize)
    {
    case 129:

 if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
     (adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ALAW ||
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_MULAW))
        {
     adss->cbSrcLength = adss->cbDstLength * 2;
 }
        else if ((adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ALAW ||
                  adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_MULAW) &&
                 adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
        {
     adss->cbSrcLength = adss->cbDstLength / 2;
 }
        else if ((adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ALAW ||
                  adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_MULAW) &&
                 (adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ALAW ||
                  adsi->pwfxDst->wFormatTag == WAVE_FORMAT_MULAW))
        {
     adss->cbSrcLength = adss->cbDstLength;
        }
        else
        {
     return MMSYSERR_NOTSUPPORTED;
 }
 break;
    case 128:

 if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
     (adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ALAW ||
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_MULAW))
        {
     adss->cbDstLength = adss->cbSrcLength / 2;
 }
        else if ((adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ALAW ||
                  adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_MULAW) &&
                 adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
        {
     adss->cbDstLength = adss->cbSrcLength * 2;
 }
        else if ((adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ALAW ||
                  adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_MULAW) &&
                 (adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ALAW ||
                  adsi->pwfxDst->wFormatTag == WAVE_FORMAT_MULAW))
        {
     adss->cbDstLength = adss->cbSrcLength;
        }
        else
        {
     return MMSYSERR_NOTSUPPORTED;
 }
 break;
    default:
 WARN("Unsupported query %08x\n", adss->fdwSize);
 return MMSYSERR_NOTSUPPORTED;
    }
    return MMSYSERR_NOERROR;
}
