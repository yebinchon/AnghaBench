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
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (double) ; 

__attribute__((used)) static
cmsInt32Number FUNC2(void)
{
    if ((FUNC1(1.234) != 1) ||
        (FUNC1(32767.234) != 32767) ||
        (FUNC1(-1.234) != -2) ||
        (FUNC1(-32767.1) != -32768)) {

            FUNC0("\nOOOPPSS! _cmsQuickFloor() does not work as expected in your machine!\n\n"
                "Please, edit lcms2mt.h and uncomment the CMS_DONT_USE_FAST_FLOOR toggle.\n");
            return 0;

    }

    return 1;
}