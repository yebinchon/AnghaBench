
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nSamplesPerSec; int wBitsPerSample; int nChannels; int wFormatTag; } ;
typedef TYPE_1__ WAVEFORMATEX ;


 char* get_format_str (int ) ;
 int sprintf (char*,char*,int,int,int,char*) ;

const char * format_string(const WAVEFORMATEX* wfx)
{
    static char str[64];

    sprintf(str, "%5dx%2dx%d %s",
 wfx->nSamplesPerSec, wfx->wBitsPerSample, wfx->nChannels,
        get_format_str(wfx->wFormatTag));

    return str;
}
