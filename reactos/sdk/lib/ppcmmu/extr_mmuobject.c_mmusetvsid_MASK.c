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
 scalar_t__ Booted ; 
 int FUNC0 (int) ; 
 int PPC_VSID_MASK ; 
 int /*<<< orphan*/ * Segs ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int* Vsid ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(int start, int end, int vsid)
{
    int i, sr, s_vsid;
    for(i = start; i < end; i++)
    {
	s_vsid = (vsid << 4) | (i & 15);
	sr = (FUNC0(i) & ~PPC_VSID_MASK) | s_vsid;
	if (Booted)
            FUNC1(i, sr);
	Segs[i] = FUNC2(s_vsid);
        Vsid[i] = vsid;
    }
}