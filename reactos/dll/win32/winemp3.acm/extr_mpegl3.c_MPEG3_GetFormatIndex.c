
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nChannels; scalar_t__ rate; scalar_t__ nBits; } ;
struct TYPE_6__ {int wFormatTag; scalar_t__ nChannels; scalar_t__ nSamplesPerSec; scalar_t__ wBitsPerSample; } ;
typedef TYPE_1__* LPWAVEFORMATEX ;
typedef TYPE_2__ Format ;
typedef int DWORD ;


 TYPE_2__* MPEG3_Formats ;
 int NUM_MPEG3_FORMATS ;
 int NUM_PCM_FORMATS ;
 TYPE_2__* PCM_Formats ;




__attribute__((used)) static DWORD MPEG3_GetFormatIndex(LPWAVEFORMATEX wfx)
{
    int i, hi;
    const Format *fmts;

    switch (wfx->wFormatTag)
    {
    case 128:
 hi = NUM_PCM_FORMATS;
 fmts = PCM_Formats;
 break;
    case 130:
    case 129:
 hi = NUM_MPEG3_FORMATS;
 fmts = MPEG3_Formats;
 break;
    default:
 return 0xFFFFFFFF;
    }

    for (i = 0; i < hi; i++)
    {
 if (wfx->nChannels == fmts[i].nChannels &&
     wfx->nSamplesPerSec == fmts[i].rate &&
     (wfx->wBitsPerSample == fmts[i].nBits || !fmts[i].nBits))
     return i;
    }

    return 0xFFFFFFFF;
}
