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
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_5__ {int lbStyle; int lbColor; } ;
typedef  TYPE_1__ LOGBRUSH ;
typedef  scalar_t__ HBRUSH ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 scalar_t__ GDI_OBJECT_TYPE_BRUSH ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (scalar_t__,int,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

void
FUNC10(void)
{
    LOGBRUSH logbrush;
    HBRUSH hBrush;

    FUNC2(&logbrush, sizeof(LOGBRUSH), 0x77);
    hBrush = FUNC0(FUNC7(1,2,3));
    FUNC9(hBrush != 0, "CreateSolidBrush failed, skipping tests.\n");
    if (!hBrush) return;

    FUNC8(ERROR_SUCCESS);
    FUNC9(FUNC5((HANDLE)GDI_OBJECT_TYPE_BRUSH, 0, NULL) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC6((HANDLE)GDI_OBJECT_TYPE_BRUSH, 0, NULL) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC4(hBrush, sizeof(WORD), NULL) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC4(hBrush, 0, NULL) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC4(hBrush, 5, NULL) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC4(hBrush, -5, NULL) == sizeof(LOGBRUSH), "\n");

    //ok(GetObject(hBrush, 0, &logbrush) == 0, "\n"); fails on win7
    FUNC9(logbrush.lbStyle == 0x77777777, "\n");
    FUNC9(FUNC4(hBrush, 5, &logbrush) == sizeof(LOGBRUSH), "\n");
    FUNC9(logbrush.lbStyle == 0, "\n");
    FUNC9(logbrush.lbColor == 0x77777701, "\n");

    FUNC9(FUNC4(hBrush, sizeof(LOGBRUSH), &logbrush) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC4(hBrush, sizeof(LOGBRUSH) - 1, &logbrush) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC4(hBrush, 1, &logbrush) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC4(hBrush, sizeof(LOGBRUSH)+2, &logbrush) == sizeof(LOGBRUSH), "\n");
    FUNC9(FUNC4(hBrush, -1, &logbrush) == sizeof(LOGBRUSH), "\n");
    // TODO: test all members

    FUNC9(FUNC3() == ERROR_SUCCESS, "\n");
    FUNC1(hBrush);

    FUNC9(FUNC6((HANDLE)GDI_OBJECT_TYPE_BRUSH, sizeof(LOGBRUSH), &logbrush) == 0, "\n");
    FUNC9(FUNC3() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", FUNC3());
}