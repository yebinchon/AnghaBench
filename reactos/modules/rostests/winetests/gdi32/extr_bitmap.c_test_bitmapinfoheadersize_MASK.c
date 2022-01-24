#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int bcHeight; int bcWidth; int bcBitCount; int bcPlanes; int bcSize; } ;
struct TYPE_7__ {int biHeight; int biWidth; int biBitCount; int biPlanes; int biSize; } ;
struct TYPE_9__ {TYPE_2__ bmciHeader; TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  BITMAPV5HEADER ;
typedef  int /*<<< orphan*/  BITMAPV4HEADER ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_3__ BITMAPINFO ;
typedef  TYPE_3__ BITMAPCOREINFO ;
typedef  int /*<<< orphan*/  BITMAPCOREHEADER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    HBITMAP hdib;
    BITMAPINFO bmi;
    BITMAPCOREINFO bci;
    HDC hdc = FUNC2(0);

    FUNC7(&bmi, 0, sizeof(BITMAPINFO));
    bmi.bmiHeader.biHeight = 100;
    bmi.bmiHeader.biWidth = 512;
    bmi.bmiHeader.biBitCount = 24;
    bmi.bmiHeader.biPlanes = 1;

    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER) - 1;

    hdib = FUNC0(hdc, &bmi, 0, NULL, NULL, 0);
    FUNC8(hdib == NULL, "CreateDIBSection succeeded\n");

    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);

    FUNC5(0xdeadbeef);
    hdib = FUNC0(hdc, &bmi, 0, NULL, NULL, 0);
    FUNC8(hdib != NULL, "CreateDIBSection error %d\n", FUNC3());
    FUNC1(hdib);

    bmi.bmiHeader.biSize++;

    FUNC5(0xdeadbeef);
    hdib = FUNC0(hdc, &bmi, 0, NULL, NULL, 0);
    FUNC8(hdib != NULL ||
       FUNC6(!hdib), /* Win98, WinMe */
       "CreateDIBSection error %d\n", FUNC3());
    FUNC1(hdib);

    bmi.bmiHeader.biSize = sizeof(BITMAPINFO);

    FUNC5(0xdeadbeef);
    hdib = FUNC0(hdc, &bmi, 0, NULL, NULL, 0);
    FUNC8(hdib != NULL ||
       FUNC6(!hdib), /* Win98, WinMe */
       "CreateDIBSection error %d\n", FUNC3());
    FUNC1(hdib);

    bmi.bmiHeader.biSize++;

    FUNC5(0xdeadbeef);
    hdib = FUNC0(hdc, &bmi, 0, NULL, NULL, 0);
    FUNC8(hdib != NULL ||
       FUNC6(!hdib), /* Win98, WinMe */
       "CreateDIBSection error %d\n", FUNC3());
    FUNC1(hdib);

    bmi.bmiHeader.biSize = sizeof(BITMAPV4HEADER);

    FUNC5(0xdeadbeef);
    hdib = FUNC0(hdc, &bmi, 0, NULL, NULL, 0);
    FUNC8(hdib != NULL, "CreateDIBSection error %d\n", FUNC3());
    FUNC1(hdib);

    bmi.bmiHeader.biSize = sizeof(BITMAPV5HEADER);

    FUNC5(0xdeadbeef);
    hdib = FUNC0(hdc, &bmi, 0, NULL, NULL, 0);
    FUNC8(hdib != NULL ||
       FUNC6(!hdib), /* Win95 */
       "CreateDIBSection error %d\n", FUNC3());
    FUNC1(hdib);

    FUNC7(&bci, 0, sizeof(BITMAPCOREINFO));
    bci.bmciHeader.bcHeight = 100;
    bci.bmciHeader.bcWidth = 512;
    bci.bmciHeader.bcBitCount = 24;
    bci.bmciHeader.bcPlanes = 1;

    bci.bmciHeader.bcSize = sizeof(BITMAPCOREHEADER) - 1;

    hdib = FUNC0(hdc, (BITMAPINFO *)&bci, 0, NULL, NULL, 0);
    FUNC8(hdib == NULL, "CreateDIBSection succeeded\n");

    bci.bmciHeader.bcSize = sizeof(BITMAPCOREHEADER);

    FUNC5(0xdeadbeef);
    hdib = FUNC0(hdc, (BITMAPINFO *)&bci, 0, NULL, NULL, 0);
    FUNC8(hdib != NULL, "CreateDIBSection error %d\n", FUNC3());
    FUNC1(hdib);

    bci.bmciHeader.bcSize++;

    hdib = FUNC0(hdc, (BITMAPINFO *)&bci, 0, NULL, NULL, 0);
    FUNC8(hdib == NULL, "CreateDIBSection succeeded\n");

    bci.bmciHeader.bcSize = sizeof(BITMAPCOREINFO);

    hdib = FUNC0(hdc, (BITMAPINFO *)&bci, 0, NULL, NULL, 0);
    FUNC8(hdib == NULL, "CreateDIBSection succeeded\n");

    FUNC4(0, hdc);
}