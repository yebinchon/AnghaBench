#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lfn_offsets ; 
 int lfn_slot ; 
 int /*<<< orphan*/ * lfn_unicode ; 

void FUNC1(void)
{
    if (lfn_unicode)
	FUNC0(lfn_unicode);
    lfn_unicode = NULL;
    if (lfn_offsets)
	FUNC0(lfn_offsets);
    lfn_offsets = NULL;
    lfn_slot = -1;
}