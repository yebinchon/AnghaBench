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
typedef  int cmsUInt32Number ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static
int FUNC3(cmsUInt32Number frm)
{
    cmsUInt32Number  b = FUNC0(frm);

    if (b == 0 && FUNC2(frm))
        return 5; // DBL
#ifndef CMS_NO_HALF_SUPPORT
    if (b == 2 && FUNC2(frm))
        return 3; // HLF
#endif
    if (b == 4 && FUNC2(frm))
        return 4; // FLT
    if (b == 2 && !FUNC2(frm))
        return 1; // 16
    if (b == 1 && !FUNC2(frm))
        return 0; // 8
    if (b == 2 && FUNC1(frm))
        return 3;
    return -1; // not recognized
}