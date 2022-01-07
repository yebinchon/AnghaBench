
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wFormatTag; int nChannels; int wBitsPerSample; } ;
typedef TYPE_1__ WAVEFORMATEX ;
typedef int BOOL ;


 int False ;
 int True ;
 scalar_t__ WAVE_FORMAT_PCM ;

BOOL
wave_out_format_supported(WAVEFORMATEX * pwfx)
{
 if (pwfx->wFormatTag != WAVE_FORMAT_PCM)
  return False;
 if ((pwfx->nChannels != 1) && (pwfx->nChannels != 2))
  return False;
 if ((pwfx->wBitsPerSample != 8) && (pwfx->wBitsPerSample != 16))
  return False;

 return True;
}
