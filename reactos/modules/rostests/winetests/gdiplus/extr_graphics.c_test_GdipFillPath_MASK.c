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
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    GpStatus status;
    GpGraphics *graphics;
    GpSolidFill *brush;
    GpPath *path;
    HDC hdc = FUNC10(hwnd);

    FUNC13(hdc != NULL, "Expected HDC to be initialized\n");
    status = FUNC2(hdc, &graphics);
    FUNC12(Ok, status);
    FUNC13(graphics != NULL, "Expected graphics to be initialized\n");
    status = FUNC4((ARGB)0xffffffff, &brush);
    FUNC12(Ok, status);
    FUNC13(brush != NULL, "Expected brush to be initialized\n");
    status = FUNC3(FillModeAlternate, &path);
    FUNC12(Ok, status);
    FUNC13(path != NULL, "Expected path to be initialized\n");

    /* Empty path */
    FUNC9(path);
    status = FUNC8(graphics, (GpBrush *)brush, path);
    FUNC12(Ok, status);

    /* Not closed path */
    FUNC9(path);
    status = FUNC0(path, 0, 0, 2, 2);
    FUNC12(Ok, status);
    status = FUNC0(path, 2, 2, 4, 0);
    FUNC12(Ok, status);
    status = FUNC8(graphics, (GpBrush *)brush, path);
    FUNC12(Ok, status);

    /* Closed path */
    FUNC9(path);
    status = FUNC1(path, 0, 0, 4, 4);
    FUNC12(Ok, status);
    status = FUNC8(graphics, (GpBrush *)brush, path);
    FUNC12(Ok, status);

    FUNC7(path);
    FUNC5((GpBrush *)brush);
    FUNC6(graphics);
    FUNC11(hwnd, hdc);
}