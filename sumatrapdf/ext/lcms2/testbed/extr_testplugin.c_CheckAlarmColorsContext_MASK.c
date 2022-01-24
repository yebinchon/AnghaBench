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
typedef  int cmsUInt16Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int const*) ; 

cmsInt32Number FUNC6(void)
{
    cmsInt32Number rc = 0;
    const cmsUInt16Number codes[] = {0x0000, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888, 0x9999, 0xaaaa, 0xbbbb, 0xcccc, 0xdddd, 0xeeee, 0xffff};
    cmsUInt16Number out[16];
    cmsContext c1, c2, c3;
    int i;

    c1 = FUNC2(NULL);

    FUNC5(c1, codes);
    c2 = FUNC0(c1, NULL);
    c3 = FUNC0(c2, NULL);

    FUNC4(c3, out);

    rc = 1;
    for (i=0; i < 16; i++) {
        if (out[i] != codes[i]) {
            FUNC1("Bad alarm code %x != %x", out[i], codes[i]);
            rc = 0;
            break;
        }
    }

    FUNC3(c1);
    FUNC3(c2);
    FUNC3(c3);

    return rc;
}