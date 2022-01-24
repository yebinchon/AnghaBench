#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ wFormatTag; scalar_t__ nSamplesPerSec; scalar_t__ nChannels; int wBitsPerSample; } ;
struct TYPE_10__ {int /*<<< orphan*/  convert; } ;
struct TYPE_9__ {int fdwOpen; long dwDriver; TYPE_8__* pwfxDst; TYPE_8__* pwfxSrc; } ;
typedef  TYPE_1__* PACMDRVSTREAMINSTANCE ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  long DWORD_PTR ;
typedef  TYPE_2__ AcmG711Data ;

/* Variables and functions */
 int /*<<< orphan*/  ACMERR_NOTPOSSIBLE ; 
 int ACM_STREAMOPENF_ASYNC ; 
 int FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  MMSYSERR_NOMEM ; 
 int /*<<< orphan*/  MMSYSERR_NOTSUPPORTED ; 
 scalar_t__ WAVE_FORMAT_ALAW ; 
 scalar_t__ WAVE_FORMAT_MULAW ; 
 scalar_t__ WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  cvtXX16alawK ; 
 int /*<<< orphan*/  cvtXX16ulawK ; 
 int /*<<< orphan*/  cvtXXalaw16K ; 
 int /*<<< orphan*/  cvtXXalawulawK ; 
 int /*<<< orphan*/  cvtXXulaw16K ; 
 int /*<<< orphan*/  cvtXXulawalawK ; 

__attribute__((used)) static	LRESULT	FUNC6(PACMDRVSTREAMINSTANCE adsi)
{
    AcmG711Data*	aad;

    FUNC5(!(adsi->fdwOpen & ACM_STREAMOPENF_ASYNC));

    if (FUNC0(adsi->pwfxSrc) == 0xFFFFFFFF ||
	FUNC0(adsi->pwfxDst) == 0xFFFFFFFF)
	return ACMERR_NOTPOSSIBLE;

    aad = FUNC3(FUNC2(), 0, sizeof(AcmG711Data));
    if (aad == 0) return MMSYSERR_NOMEM;

    adsi->dwDriver = (DWORD_PTR)aad;

    if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
	adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
    {
	goto theEnd;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ALAW &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
    {
	/* resampling or mono <=> stereo not available
         * G711 algo only define 16 bit per sample output
         */
	if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
	    adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxDst->wBitsPerSample != 16)
	    goto theEnd;

	/* g711 A-Law decoding... */
	if (adsi->pwfxDst->wBitsPerSample == 16)
	    aad->convert = cvtXXalaw16K;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ALAW)
    {
	if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
	    adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxSrc->wBitsPerSample != 16)
	    goto theEnd;

	/* g711 coding... */
	if (adsi->pwfxSrc->wBitsPerSample == 16)
	    aad->convert = cvtXX16alawK;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_MULAW &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_PCM)
    {
	/* resampling or mono <=> stereo not available
         * G711 algo only define 16 bit per sample output
         */
	if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
	    adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxDst->wBitsPerSample != 16)
	    goto theEnd;

	/* g711 MU-Law decoding... */
	if (adsi->pwfxDst->wBitsPerSample == 16)
	    aad->convert = cvtXXulaw16K;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_PCM &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_MULAW)
    {
	if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
	    adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels ||
            adsi->pwfxSrc->wBitsPerSample != 16)
	    goto theEnd;

	/* g711 coding... */
	if (adsi->pwfxSrc->wBitsPerSample == 16)
	    aad->convert = cvtXX16ulawK;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_MULAW &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_ALAW)
    {
	if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
	    adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels)
	    goto theEnd;

	/* MU-Law => A-Law... */
        aad->convert = cvtXXulawalawK;
    }
    else if (adsi->pwfxSrc->wFormatTag == WAVE_FORMAT_ALAW &&
             adsi->pwfxDst->wFormatTag == WAVE_FORMAT_MULAW)
    {
	if (adsi->pwfxSrc->nSamplesPerSec != adsi->pwfxDst->nSamplesPerSec ||
	    adsi->pwfxSrc->nChannels != adsi->pwfxDst->nChannels)
	    goto theEnd;

	/* A-Law => MU-Law... */
        aad->convert = cvtXXalawulawK;
    }
    else goto theEnd;

    FUNC1(adsi, aad);

    return MMSYSERR_NOERROR;

 theEnd:
    FUNC4(FUNC2(), 0, aad);
    adsi->dwDriver = 0L;
    return MMSYSERR_NOTSUPPORTED;
}