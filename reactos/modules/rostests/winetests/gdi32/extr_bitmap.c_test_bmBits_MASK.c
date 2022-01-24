#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bmp ;
typedef  int /*<<< orphan*/  bits ;
struct TYPE_6__ {int /*<<< orphan*/  bmBits; } ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  TYPE_1__ BYTE ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    BYTE bits[4];
    HBITMAP hbmp;
    BITMAP bmp;

    FUNC3(bits, 0, sizeof(bits));
    hbmp = FUNC0(2, 2, 1, 4, bits);
    FUNC4(hbmp != NULL, "CreateBitmap failed\n");

    FUNC3(&bmp, 0xFF, sizeof(bmp));
    FUNC4(FUNC2(hbmp, sizeof(bmp), &bmp) == sizeof(bmp),
       "GetObject failed or returned a wrong structure size\n");
    FUNC4(!bmp.bmBits, "bmBits must be NULL for device-dependent bitmaps\n");

    FUNC1(hbmp);
}