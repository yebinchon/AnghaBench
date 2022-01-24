#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lopnStyle; } ;
typedef  TYPE_1__ LOGPEN ;
typedef  scalar_t__ HPEN ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BITMAP ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 scalar_t__ GDI_OBJECT_TYPE_PEN ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (scalar_t__,int,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ PS_SOLID ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

void
FUNC10(void)
{
    LOGPEN logpen;
    HPEN hPen;

    FUNC2(&logpen, sizeof(LOGPEN), 0x77);
    hPen = FUNC0(PS_SOLID, 3, FUNC7(4,5,6));
    FUNC9(hPen != 0, "CreatePen failed, skipping tests.\n");
    if (!hPen) return;
    FUNC8(ERROR_SUCCESS);
    FUNC9(FUNC5((HANDLE)GDI_OBJECT_TYPE_PEN, 0, NULL) == sizeof(LOGPEN), "\n");
    FUNC9(FUNC6((HANDLE)GDI_OBJECT_TYPE_PEN, 0, NULL) == sizeof(LOGPEN), "\n");
    FUNC9(FUNC4(hPen, sizeof(BITMAP), NULL) == sizeof(LOGPEN), "\n");
    FUNC9(FUNC4(hPen, 0, NULL) == sizeof(LOGPEN), "\n");
    FUNC9(FUNC4(hPen, 5, NULL) == sizeof(LOGPEN), "\n");
    FUNC9(FUNC4(hPen, -5, NULL) == sizeof(LOGPEN), "\n");
    FUNC9(FUNC4(hPen, sizeof(LOGPEN), &logpen) == sizeof(LOGPEN), "\n");
    FUNC9(FUNC4(hPen, sizeof(LOGPEN)-1, &logpen) == 0, "\n");
    FUNC9(FUNC4(hPen, sizeof(LOGPEN)+2, &logpen) == sizeof(LOGPEN), "\n");
    FUNC9(FUNC4(hPen, 0, &logpen) == 0, "\n");
    FUNC9(FUNC4(hPen, -5, &logpen) == sizeof(LOGPEN), "\n");
    //ok(GetLastError() == ERROR_SUCCESS, "\n"); fails on win7

    /* test if the fields are filled correctly */
    FUNC9(logpen.lopnStyle == PS_SOLID, "\n");

    FUNC9(FUNC6((HANDLE)GDI_OBJECT_TYPE_PEN, sizeof(LOGPEN), &logpen) == 0, "\n");
    FUNC9(FUNC3() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", FUNC3());

    FUNC1(hPen);
}