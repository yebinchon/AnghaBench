#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cbSize; int dwFlags; } ;
typedef  TYPE_1__ STICKYKEYS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_GETSTICKYKEYS ; 
 int /*<<< orphan*/  SPI_SETSTICKYKEYS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(void)
{
    STICKYKEYS skOrig, sk;

    /* Get original values */
    skOrig.cbSize = sizeof(STICKYKEYS);
    FUNC0(FUNC1(SPI_GETSTICKYKEYS, 0, &skOrig, 0) == 1);

    sk.cbSize = sizeof(STICKYKEYS)+1;
    FUNC2(FUNC1(SPI_GETSTICKYKEYS, 0, &sk, 0) == 0);

    sk.cbSize = sizeof(STICKYKEYS)-1;
    FUNC2(FUNC1(SPI_GETSTICKYKEYS, 0, &sk, 0) == 0);

    sk.cbSize = sizeof(STICKYKEYS);
    FUNC2(FUNC1(SPI_GETSTICKYKEYS, 1, &sk, 0) == 0);
    FUNC2(FUNC1(SPI_GETSTICKYKEYS, -1, &sk, 0) == 0);
    FUNC2(FUNC1(SPI_GETSTICKYKEYS, sk.cbSize, &sk, 0) == 1);
    FUNC2(FUNC1(SPI_GETSTICKYKEYS, sk.cbSize-1, &sk, 0) == 0);
    FUNC2(FUNC1(SPI_GETSTICKYKEYS, sk.cbSize+1, &sk, 0) == 0);

    sk = skOrig;
    sk.dwFlags = (skOrig.dwFlags ^ 1);
    FUNC2(FUNC1(SPI_SETSTICKYKEYS, sk.cbSize+1, &sk, 0) == 0);
    FUNC2(FUNC1(SPI_SETSTICKYKEYS, sk.cbSize-1, &sk, 0) == 0);
    FUNC2(FUNC1(SPI_SETSTICKYKEYS, sk.cbSize, &sk, 0) == 1);

    sk = skOrig;
    FUNC2(FUNC1(SPI_GETSTICKYKEYS, 0, &sk, 0) == 1);
    FUNC2(sk.dwFlags == (skOrig.dwFlags ^ 1));

    /* Restore original values */
    skOrig.cbSize = sizeof(STICKYKEYS);
    FUNC0(FUNC1(SPI_SETSTICKYKEYS, 0, &skOrig, 0) == 1);

}