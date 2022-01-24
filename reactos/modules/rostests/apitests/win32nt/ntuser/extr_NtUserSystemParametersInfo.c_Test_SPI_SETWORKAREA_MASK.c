#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_1__* PVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXVIRTUALSCREEN ; 
 int /*<<< orphan*/  SM_CYVIRTUALSCREEN ; 
 int /*<<< orphan*/  SPI_GETWORKAREA ; 
 int /*<<< orphan*/  SPI_SETWORKAREA ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(void)
{
    RECT rcOrig, rc;

    /* Get the original value */
    FUNC0(FUNC2(SPI_GETWORKAREA, 0, &rcOrig, 0) == 1);

    /* Change value */
    rc = rcOrig;
    rc.left += 1;
    rc.top += 2;
    rc.right -= 3;
    rc.bottom -= 2;
    FUNC3(FUNC2(SPI_SETWORKAREA, 1, &rc, 0) == 1);
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    FUNC3(FUNC2(SPI_SETWORKAREA, sizeof(RECT), &rc, 0) == 1);

    FUNC3(FUNC2(SPI_GETWORKAREA, 1, &rc, 0) == 1);
    FUNC3(FUNC2(SPI_GETWORKAREA, -1, &rc, 0) == 1);
    FUNC3(FUNC2(SPI_GETWORKAREA, 0xdeadbeef, &rc, 0) == 1);
    FUNC3(FUNC2(SPI_GETWORKAREA, 0, (PVOID)0xdeadbeef, 0) == 0);

    /* Test values */
    rc = rcOrig; rc.left = -1;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.top = -1;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.top = 10; rc.bottom = 11;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    rc = rcOrig; rc.top = 10; rc.bottom = 10;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.top = 10; rc.bottom = 9;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.left = 10; rc.right = 11;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    rc = rcOrig; rc.left = 10; rc.right = 10;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.left = 10; rc.right = 9;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.bottom = FUNC1(SM_CYVIRTUALSCREEN);
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    rc = rcOrig; rc.bottom = FUNC1(SM_CYVIRTUALSCREEN)+1;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.right = FUNC1(SM_CXVIRTUALSCREEN);
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    rc = rcOrig; rc.right = FUNC1(SM_CXVIRTUALSCREEN)+1;
    FUNC3(FUNC2(SPI_SETWORKAREA, 0, &rc, 0) == 0);

    /* Restore original value */
    FUNC0(FUNC2(SPI_SETWORKAREA, 0, &rcOrig, 0) == 1);


}