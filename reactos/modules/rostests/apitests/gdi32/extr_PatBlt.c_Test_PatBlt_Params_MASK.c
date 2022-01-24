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
typedef  int ULONG ;
typedef  scalar_t__ HDC ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int,int) ; 
 int PATCOPY ; 
 int PATINVERT ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int SRCCOPY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ hdcTarget ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

void FUNC9()
{
    BOOL ret;
    ULONG i, rop;
    HDC hdc;

    /* Test a rop that contains only the operation index */
    ret = FUNC4(hdcTarget, 0, 0, 1, 1, PATCOPY & 0x00FF0000);
    FUNC8(ret, 1);

    /* Test a rop that contains arbitrary values outside the operation index */
    ret = FUNC4(hdcTarget, 0, 0, 1, 1, (PATCOPY & 0x00FF0000) | 0xab00cdef);
    FUNC8(ret, 1);

    /* Test an invalid rop  */
    FUNC5(0);
    FUNC8(FUNC4(hdcTarget, 0, 0, 1, 1, SRCCOPY) , 0);
    FUNC7(0);

    /* Test all rops */
    for (i = 0; i < 256; i++)
    {
        rop = i << 16;
        ret = FUNC4(hdcTarget, 0, 0, 1, 1, rop);

        /* Only these should succeed (they use no source) */
        if ((i == 0) || (i == 5) || (i == 10) || (i == 15) || (i == 80) ||
            (i == 85) || (i == 90) || (i == 95) || (i == 160) || (i == 165) ||
            (i == 170) || (i == 175) || (i == 240) || (i == 245) ||
            (i == 250) || (i == 255))
        {
            FUNC6(ret == 1, "index %ld failed, but should succeed\n", i);
        }
        else
        {
            FUNC6(ret == 0, "index %ld succeeded, but should fail\n", i);
        }
    }

    /* Test quaternary rop, the background part is simply ignored */
    ret = FUNC4(hdcTarget, 0, 0, 1, 1, FUNC3(PATCOPY, PATINVERT));
    FUNC8(ret, 1);
    ret = FUNC4(hdcTarget, 0, 0, 1, 1, FUNC3(PATCOPY, SRCCOPY));
    FUNC8(ret, 1);
    ret = FUNC4(hdcTarget, 0, 0, 1, 1, FUNC3(SRCCOPY, PATCOPY));
    FUNC8(ret, 0);

    /* Test an info DC */
    hdc = FUNC1("DISPLAY", NULL, NULL, NULL);
    FUNC6(hdc != 0, "\n");
    FUNC5(0);
    FUNC8(FUNC4(hdc, 0, 0, 1, 1, PATCOPY), 1);
    FUNC7(0);
    FUNC2(hdc);

    /* Test a mem DC without selecting a bitmap */
    hdc = FUNC0(NULL);
    FUNC6(hdc != 0, "\n");
    FUNC8(FUNC4(hdc, 0, 0, 1, 1, PATCOPY), 1);
    FUNC7(0);
    FUNC2(hdc);



}