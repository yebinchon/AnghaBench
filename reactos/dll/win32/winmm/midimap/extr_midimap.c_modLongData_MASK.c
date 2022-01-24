#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mh ;
typedef  int WORD ;
struct TYPE_13__ {scalar_t__ dwFlags; } ;
struct TYPE_12__ {TYPE_1__** ChannelMap; } ;
struct TYPE_11__ {scalar_t__ loaded; int /*<<< orphan*/  hMidi; } ;
typedef  TYPE_2__ MIDIMAPDATA ;
typedef  TYPE_3__ MIDIHDR ;
typedef  TYPE_3__* LPMIDIHDR ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ MMSYSERR_ERROR ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 

__attribute__((used)) static	DWORD	FUNC4(MIDIMAPDATA* mom, LPMIDIHDR lpMidiHdr, DWORD_PTR dwParam2)
{
    WORD	chn;
    DWORD	ret = MMSYSERR_NOERROR;
    MIDIHDR	mh;

    if (FUNC0(mom))
	return MMSYSERR_ERROR;

    mh = *lpMidiHdr;
    for (chn = 0; chn < 16; chn++)
    {
	if (mom->ChannelMap[chn] && mom->ChannelMap[chn]->loaded > 0)
	{
	    mh.dwFlags = 0;
	    FUNC2(mom->ChannelMap[chn]->hMidi, &mh, sizeof(mh));
	    ret = FUNC1(mom->ChannelMap[chn]->hMidi, &mh, sizeof(mh));
	    FUNC3(mom->ChannelMap[chn]->hMidi, &mh, sizeof(mh));
	    if (ret != MMSYSERR_NOERROR) break;
	}
    }
    return ret;
}