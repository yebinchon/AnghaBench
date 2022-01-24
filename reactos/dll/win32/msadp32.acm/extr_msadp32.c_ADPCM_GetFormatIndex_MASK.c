#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int wFormatTag; scalar_t__ nChannels; scalar_t__ nSamplesPerSec; scalar_t__ wBitsPerSample; int nAvgBytesPerSec; int nBlockAlign; int cbSize; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
struct TYPE_8__ {scalar_t__ nChannels; scalar_t__ rate; scalar_t__ nBits; } ;
typedef  TYPE_2__ Format ;
typedef  int DWORD ;

/* Variables and functions */
 TYPE_2__* ADPCM_Formats ; 
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* PCM_Formats ; 
#define  WAVE_FORMAT_ADPCM 129 
#define  WAVE_FORMAT_PCM 128 

__attribute__((used)) static	DWORD	FUNC1(const WAVEFORMATEX* wfx)
{
    int             i, hi;
    const Format*   fmts;

    switch (wfx->wFormatTag)
    {
    case WAVE_FORMAT_PCM:
	hi = FUNC0(PCM_Formats);
	fmts = PCM_Formats;
	break;
    case WAVE_FORMAT_ADPCM:
	hi = FUNC0(ADPCM_Formats);
	fmts = ADPCM_Formats;
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

    switch (wfx->wFormatTag)
    {
    case WAVE_FORMAT_PCM:
	if(3 > wfx->nChannels &&
	   wfx->nChannels > 0 &&
	   wfx->nAvgBytesPerSec == 2 * wfx->nSamplesPerSec * wfx->nChannels &&
	   wfx->nBlockAlign == 2 * wfx->nChannels &&
	   wfx->wBitsPerSample == 16)
	   return hi;
	break;
    case WAVE_FORMAT_ADPCM:
	if(3 > wfx->nChannels &&
	   wfx->nChannels > 0 &&
	   wfx->wBitsPerSample == 4 &&
	   wfx->cbSize == 32)
	   return hi;
	break;
    }

    return 0xFFFFFFFF;
}