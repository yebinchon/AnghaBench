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
typedef  int /*<<< orphan*/  VARIANT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  VT_I4 128 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(VARIANT *v)
{
    switch(FUNC2(v)) {
    case VT_I4:
        return FUNC1(v);
    default:
        FUNC0("unhandled child ID variant type: %d\n", FUNC2(v));
        return -1;
    }
}