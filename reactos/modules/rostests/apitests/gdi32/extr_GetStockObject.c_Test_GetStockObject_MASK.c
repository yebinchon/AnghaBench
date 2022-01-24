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
typedef  scalar_t__ UINT_PTR ;

/* Variables and functions */
 int ANSI_FIXED_FONT ; 
 int ANSI_VAR_FONT ; 
 int BLACK_BRUSH ; 
 int BLACK_PEN ; 
 int DC_BRUSH ; 
 int DC_PEN ; 
 int DEFAULT_GUI_FONT ; 
 int DEFAULT_PALETTE ; 
 int DEVICE_DEFAULT_FONT ; 
 int DKGRAY_BRUSH ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GDI_HANDLE_STOCK_MASK ; 
 scalar_t__ GDI_OBJECT_TYPE_BITMAP ; 
 scalar_t__ GDI_OBJECT_TYPE_BRUSH ; 
 scalar_t__ GDI_OBJECT_TYPE_COLORSPACE ; 
 scalar_t__ GDI_OBJECT_TYPE_FONT ; 
 scalar_t__ GDI_OBJECT_TYPE_PALETTE ; 
 scalar_t__ GDI_OBJECT_TYPE_PEN ; 
 int GRAY_BRUSH ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int LTGRAY_BRUSH ; 
 int NULL_BRUSH ; 
 int NULL_PEN ; 
 int OEM_FIXED_FONT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SYSTEM_FIXED_FONT ; 
 int SYSTEM_FONT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int WHITE_BRUSH ; 
 int WHITE_PEN ; 

void FUNC6()
{
	/* Test limits and error */
	FUNC4(ERROR_SUCCESS);
	FUNC3(FUNC2(0) != NULL);
	FUNC5(FUNC2(20) != NULL);
	FUNC3(FUNC2(21) != NULL);
	FUNC3(FUNC2(-1) == NULL);
	FUNC3(FUNC2(9) == NULL);
	FUNC3(FUNC2(22) == NULL);
	FUNC3(FUNC1() == ERROR_SUCCESS);

	/* Test for the stock bit */
	FUNC3((UINT_PTR)FUNC2(WHITE_BRUSH) && GDI_HANDLE_STOCK_MASK);

	/* Test for correct types */
	FUNC3(FUNC0(FUNC2(WHITE_BRUSH)) == GDI_OBJECT_TYPE_BRUSH); /* 0 */
	FUNC3(FUNC0(FUNC2(LTGRAY_BRUSH)) == GDI_OBJECT_TYPE_BRUSH); /* 1 */
	FUNC3(FUNC0(FUNC2(GRAY_BRUSH)) == GDI_OBJECT_TYPE_BRUSH); /* 1 */
	FUNC3(FUNC0(FUNC2(DKGRAY_BRUSH)) == GDI_OBJECT_TYPE_BRUSH); /* 1 */
	FUNC3(FUNC0(FUNC2(BLACK_BRUSH)) == GDI_OBJECT_TYPE_BRUSH); /* 1 */
	FUNC3(FUNC0(FUNC2(NULL_BRUSH)) == GDI_OBJECT_TYPE_BRUSH); /* 1 */
	FUNC3(FUNC0(FUNC2(WHITE_PEN)) == GDI_OBJECT_TYPE_PEN); /* 6 */
	FUNC3(FUNC0(FUNC2(BLACK_PEN)) == GDI_OBJECT_TYPE_PEN); /* 7 */
	FUNC3(FUNC0(FUNC2(NULL_PEN)) == GDI_OBJECT_TYPE_PEN); /* 8 */
	FUNC3(FUNC0(FUNC2(OEM_FIXED_FONT)) == GDI_OBJECT_TYPE_FONT); /* 10 */
	FUNC3(FUNC0(FUNC2(ANSI_FIXED_FONT)) == GDI_OBJECT_TYPE_FONT); /* 11 */
	FUNC5(FUNC0(FUNC2(ANSI_VAR_FONT)) == GDI_OBJECT_TYPE_FONT); /* 12 */
	FUNC3(FUNC0(FUNC2(SYSTEM_FONT)) == GDI_OBJECT_TYPE_FONT); /* 13 */
	FUNC3(FUNC0(FUNC2(DEVICE_DEFAULT_FONT)) == GDI_OBJECT_TYPE_FONT); /* 14 */
	FUNC3(FUNC0(FUNC2(DEFAULT_PALETTE)) == GDI_OBJECT_TYPE_PALETTE); /* 15 */
	FUNC3(FUNC0(FUNC2(SYSTEM_FIXED_FONT)) == GDI_OBJECT_TYPE_FONT); /* 16 */
	FUNC3(FUNC0(FUNC2(DEFAULT_GUI_FONT)) == GDI_OBJECT_TYPE_FONT); /* 17 */
	FUNC3(FUNC0(FUNC2(DC_BRUSH)) == GDI_OBJECT_TYPE_BRUSH); /* 18 */
	FUNC3(FUNC0(FUNC2(DC_PEN)) == GDI_OBJECT_TYPE_PEN); /* 19 */
	FUNC5(FUNC0(FUNC2(20)) == GDI_OBJECT_TYPE_COLORSPACE); /* 20 */
	FUNC3(FUNC0(FUNC2(21)) == GDI_OBJECT_TYPE_BITMAP); /* 21 */
}