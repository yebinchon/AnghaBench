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
 scalar_t__ Columns ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ Rows ; 
 scalar_t__ T_CS ; 
 scalar_t__* T_CSV ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 

void
FUNC3()
{
    FUNC0(FUNC2((char *)T_CS, (int)Rows - 1, 0));
#ifdef FEAT_VERTSPLIT
    if (*T_CSV != NUL)
	OUT_STR(tgoto((char *)T_CSV, (int)Columns - 1, 0));
#endif
    FUNC1();		    /* don't know where cursor is now */
}