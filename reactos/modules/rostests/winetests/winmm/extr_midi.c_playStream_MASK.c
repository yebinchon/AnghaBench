#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwFlags; } ;
typedef  int /*<<< orphan*/  MMRESULT ;
typedef  int /*<<< orphan*/  MIDIHDR ;
typedef  TYPE_1__* LPMIDIHDR ;
typedef  int /*<<< orphan*/  HMIDISTRM ;

/* Variables and functions */
 int MHDR_DONE ; 
 int MHDR_INQUEUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static MMRESULT FUNC2(HMIDISTRM hm, LPMIDIHDR lpMidiHdr)
{
    MMRESULT rc = FUNC1(hm, lpMidiHdr, sizeof(MIDIHDR));
    /* virtual machines may return MIDIERR_STILLPLAYING from the next request
     * even after MHDR_DONE is set. It's still too early, so add MHDR_INQUEUE. */
    if (!rc) while (!(lpMidiHdr->dwFlags & MHDR_DONE) || (lpMidiHdr->dwFlags & MHDR_INQUEUE)) { FUNC0(100); }
    return rc;
}