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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  LANG_ARABIC 129 
#define  LANG_HEBREW 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  lcid ; 

BOOL FUNC2()
{
    switch (FUNC1(FUNC0(lcid)))
    {
    /* Additional Languages can be added */
    case LANG_ARABIC:
    case LANG_HEBREW:
        return TRUE;
    default:
        return FALSE;
    }
}