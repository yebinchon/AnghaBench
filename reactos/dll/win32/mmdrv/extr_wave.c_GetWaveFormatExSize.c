
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WAVEFORMATEX ;
struct TYPE_3__ {scalar_t__ wFormatTag; int cbSize; } ;
typedef TYPE_1__* PWAVEFORMATEX ;
typedef int PCMWAVEFORMAT ;
typedef int DWORD ;


 scalar_t__ WAVE_FORMAT_PCM ;

DWORD
GetWaveFormatExSize(PWAVEFORMATEX format)
{
    if ( format->wFormatTag == WAVE_FORMAT_PCM )
        return sizeof(PCMWAVEFORMAT);
    else
        return sizeof(WAVEFORMATEX) + format->cbSize;
}
