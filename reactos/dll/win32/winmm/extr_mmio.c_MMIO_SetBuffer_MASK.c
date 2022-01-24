#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dwFlags; int cchBuffer; int /*<<< orphan*/  lDiskOffset; int /*<<< orphan*/  lBufOffset; int /*<<< orphan*/ * pchBuffer; int /*<<< orphan*/ * pchEndWrite; int /*<<< orphan*/ * pchEndRead; int /*<<< orphan*/ * pchNext; } ;
struct TYPE_7__ {int /*<<< orphan*/  bBufferLoaded; TYPE_1__ info; } ;
typedef  TYPE_2__ WINE_MMIO ;
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ MMRESULT ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ MMIOERR_CANNOTWRITE ; 
 scalar_t__ MMIOERR_OUTOFMEMORY ; 
 int MMIO_ALLOCBUF ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static MMRESULT FUNC6(WINE_MMIO* wm, void* pchBuffer, LONG cchBuffer,
			       UINT uFlags)
{
    FUNC4("(%p %p %d %u)\n", wm, pchBuffer, cchBuffer, uFlags);

    if (cchBuffer > 0xFFFF)
	FUNC5("Untested handling of huge mmio buffers (%d >= 64k)\n", cchBuffer);

    if (FUNC3(wm, 0) != MMSYSERR_NOERROR)
	return MMIOERR_CANNOTWRITE;

    /* free previous buffer if allocated */
    if (wm->info.dwFlags & MMIO_ALLOCBUF) {
        FUNC2(FUNC0(), 0, wm->info.pchBuffer);
        wm->info.pchBuffer = NULL;
	wm->info.dwFlags &= ~MMIO_ALLOCBUF;
    }

    if (pchBuffer) {
        wm->info.pchBuffer = pchBuffer;
    } else if (cchBuffer) {
	if (!(wm->info.pchBuffer = FUNC1(FUNC0(), 0, cchBuffer)))
	    return MMIOERR_OUTOFMEMORY;
	wm->info.dwFlags |= MMIO_ALLOCBUF;
    } else {
	wm->info.pchBuffer = NULL;
    }

    wm->info.cchBuffer = cchBuffer;
    wm->info.pchNext = wm->info.pchBuffer;
    wm->info.pchEndRead = wm->info.pchBuffer;
    wm->info.pchEndWrite = wm->info.pchBuffer + cchBuffer;
    wm->info.lBufOffset = wm->info.lDiskOffset;
    wm->bBufferLoaded = FALSE;

    return MMSYSERR_NOERROR;
}