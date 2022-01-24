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
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEFAULT_BITMAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ GDI_OBJECT_TYPE_BITMAP ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdc1 ; 
 int /*<<< orphan*/  hdc2 ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9()
{
    HBITMAP hbmp, hbmpInvalid, hbmpOld;
	BYTE bmBits[4] = {0};
	HDC hdcTmp;

	hbmp = FUNC0(2, 2, 1, 1, &bmBits);
	hbmpInvalid = FUNC0(2, 2, 1, 4, &bmBits);
	if (!hbmp || !hbmpInvalid)
	{
	    FUNC8("couldn't create bitmaps, skipping\n");
	    return;
	}

    hbmpOld = FUNC6(hdc1, hbmp);
    FUNC7(FUNC4(hbmpOld) == GDI_OBJECT_TYPE_BITMAP, "wrong type\n");

	/* Test invalid BITMAP */
    FUNC7(FUNC6(hdc1, hbmpInvalid) == NULL, "should fail\n");

    /* Test if we get the right bitmap back */
    hbmpOld = FUNC6(hdc1, hbmpOld);
    FUNC7(hbmpOld == hbmp, "didn't get the right bitmap back.\n");

    /* Test selecting bitmap into 2 DCs */
    hbmpOld = FUNC6(hdc1, hbmp);
    FUNC7(FUNC6(hdc2, hbmp) == NULL, "Should fail.\n");

    /* Test selecting same bitmap twice */
    hbmpOld = FUNC6(hdc1, hbmp);
    FUNC7(hbmpOld == hbmp, "didn't get the right bitmap back.\n");
    FUNC6(hdc1, FUNC5(DEFAULT_BITMAP));

    /* Test selecting and then deleting the DC */
    hdcTmp = FUNC1(NULL);
    hbmpOld = FUNC6(hdcTmp, hbmp);
    FUNC7(hbmpOld == FUNC5(DEFAULT_BITMAP), "didn't get the right bitmap back.\n");
    FUNC2(hdcTmp);
    hbmpOld = FUNC6(hdc1, hbmp);
    FUNC7(hbmpOld == FUNC5(DEFAULT_BITMAP), "didn't get the right bitmap back.\n");

    FUNC3(hbmp);
    FUNC3(hbmpInvalid);
}