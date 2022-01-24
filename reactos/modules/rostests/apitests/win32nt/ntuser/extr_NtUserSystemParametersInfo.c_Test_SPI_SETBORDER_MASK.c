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
typedef  int INT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXBORDER ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETBORDER ; 
 int /*<<< orphan*/  SPI_SETBORDER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(void)
{
    INT iOrig, iTemp = 0;

    /* Get original value */
    FUNC1(SPI_GETBORDER, 0, &iOrig, 0);

    /* Value 0 */
    FUNC1(SPI_SETBORDER, 0, NULL, SPIF_UPDATEINIFILE);
    FUNC1(SPI_GETBORDER, 0, &iTemp, 0);
    FUNC2(iTemp == 1);
    FUNC2(FUNC0(SM_CXBORDER) == 1);

    /* Value 1 */
    FUNC1(SPI_SETBORDER, 1, NULL, SPIF_UPDATEINIFILE);
    FUNC1(SPI_GETBORDER, 0, &iTemp, 0);
    FUNC2(iTemp == 1);
//  Test_MetricKey(pti, VAL_BORDER, 1);

    /* Value 2 */
    FUNC1(SPI_SETBORDER, 2, NULL, SPIF_UPDATEINIFILE);
    FUNC1(SPI_GETBORDER, 0, &iTemp, 0);
    FUNC2(iTemp == 2);
    FUNC2(FUNC0(SM_CXBORDER) == 1);

    /* Restore original value */
    FUNC1(SPI_SETBORDER, iOrig, NULL, SPIF_UPDATEINIFILE);

}