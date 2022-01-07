
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int wFormatTag; scalar_t__ nChannels; scalar_t__ nSamplesPerSec; scalar_t__ wBitsPerSample; } ;
typedef TYPE_1__ WAVEFORMATEX ;
struct TYPE_9__ {scalar_t__ nChannels; scalar_t__ rate; scalar_t__ nBits; } ;
typedef TYPE_2__ Format ;
typedef int DWORD ;


 TYPE_2__* ALaw_Formats ;
 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* PCM_Formats ;
 TYPE_2__* ULaw_Formats ;




__attribute__((used)) static DWORD G711_GetFormatIndex(const WAVEFORMATEX *wfx)
{
    int i, hi;
    const Format* fmts;

    switch (wfx->wFormatTag)
    {
    case 128:
 hi = ARRAY_SIZE(PCM_Formats);
 fmts = PCM_Formats;
 break;
    case 130:
 hi = ARRAY_SIZE(ALaw_Formats);
 fmts = ALaw_Formats;
 break;
    case 129:
 hi = ARRAY_SIZE(ULaw_Formats);
 fmts = ULaw_Formats;
 break;
    default:
 return 0xFFFFFFFF;
    }

    for (i = 0; i < hi; i++)
    {
 if (wfx->nChannels == fmts[i].nChannels &&
     wfx->nSamplesPerSec == fmts[i].rate &&
     wfx->wBitsPerSample == fmts[i].nBits)
     return i;
    }

    return 0xFFFFFFFF;
}
