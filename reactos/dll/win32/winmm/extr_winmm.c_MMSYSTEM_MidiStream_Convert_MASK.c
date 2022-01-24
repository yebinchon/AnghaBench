#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dwTimeDiv; scalar_t__ dwTempo; } ;
typedef  TYPE_1__ WINE_MIDIStream ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static	DWORD	FUNC3(WINE_MIDIStream* lpMidiStrm, DWORD pulse)
{
    DWORD	ret = 0;

    if (lpMidiStrm->dwTimeDiv == 0) {
	FUNC0("Shouldn't happen. lpMidiStrm->dwTimeDiv = 0\n");
    } else if (lpMidiStrm->dwTimeDiv > 0x8000) { /* SMPTE, unchecked FIXME? */
	int	nf = -(char)FUNC1(lpMidiStrm->dwTimeDiv);	/* number of frames     */
	int	nsf = FUNC2(lpMidiStrm->dwTimeDiv);		/* number of sub-frames */
	ret = (pulse * 1000) / (nf * nsf);
    } else {
	ret = (DWORD)((double)pulse * ((double)lpMidiStrm->dwTempo / 1000) /
		      (double)lpMidiStrm->dwTimeDiv);
    }

    return ret;
}