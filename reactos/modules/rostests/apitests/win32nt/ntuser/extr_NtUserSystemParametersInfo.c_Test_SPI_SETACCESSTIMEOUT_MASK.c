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
typedef  int /*<<< orphan*/  atoOrig ;
struct TYPE_3__ {int cbSize; } ;
typedef  TYPE_1__ ACCESSTIMEOUT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_GETACCESSTIMEOUT ; 
 int /*<<< orphan*/  SPI_SETACCESSTIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(void)
{
    ACCESSTIMEOUT atoOrig, atoTmp;

    /* Get original values */
    atoOrig.cbSize = sizeof(ACCESSTIMEOUT);
    FUNC0(FUNC1(SPI_GETACCESSTIMEOUT, 0, &atoOrig, 0) == 1);

    atoTmp.cbSize = sizeof(ACCESSTIMEOUT) - 1;
    FUNC2(FUNC1(SPI_GETACCESSTIMEOUT, 0, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT) + 1;
    FUNC2(FUNC1(SPI_GETACCESSTIMEOUT, 0, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    FUNC2(FUNC1(SPI_GETACCESSTIMEOUT, 0, &atoTmp, 0) == 1);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    FUNC2(FUNC1(SPI_GETACCESSTIMEOUT, 1, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    FUNC2(FUNC1(SPI_GETACCESSTIMEOUT, -1, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    FUNC2(FUNC1(SPI_GETACCESSTIMEOUT, sizeof(ACCESSTIMEOUT), &atoTmp, 0) == 1);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    FUNC2(FUNC1(SPI_GETACCESSTIMEOUT, sizeof(ACCESSTIMEOUT)-1, &atoTmp, 0) == 0);
    atoTmp.cbSize = sizeof(ACCESSTIMEOUT);
    FUNC2(FUNC1(SPI_GETACCESSTIMEOUT, sizeof(ACCESSTIMEOUT)+1, &atoTmp, 0) == 0);

    /* Restore original values */
    FUNC0(FUNC1(SPI_SETACCESSTIMEOUT, sizeof(atoOrig), &atoOrig, 0) == 1);
}