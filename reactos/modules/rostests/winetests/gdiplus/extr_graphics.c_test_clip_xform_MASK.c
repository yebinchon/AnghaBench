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
typedef  int /*<<< orphan*/  region_data ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  REAL ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  MatrixOrderAppend ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 

__attribute__((used)) static void FUNC16(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC11( hwnd );
    GpRegion *clip;
    COLORREF color;
    UINT region_data_size;
    struct {
        DWORD size;
        DWORD checksum;
        DWORD magic;
        DWORD num_children;
        DWORD element_type;
        REAL x;
        REAL y;
        REAL width;
        REAL height;
    } region_data;

    status = FUNC0(hdc, &graphics);
    FUNC14(Ok, status);
    status = FUNC1(&clip);
    FUNC14(Ok, status);

    status = FUNC6(graphics, 0xff000000);
    FUNC14(Ok, status);

    status = FUNC10(graphics, 10, 10, -10, -10, CombineModeReplace);
    FUNC14(Ok, status);
    status = FUNC4(graphics, clip);
    FUNC14(Ok, status);
    status = FUNC5(clip, (BYTE*)&region_data, sizeof(region_data), &region_data_size);
    FUNC14(Ok, status);
    FUNC14(36, region_data_size);
    FUNC14(28, region_data.size);
    FUNC14(0, region_data.num_children);
    FUNC14(0x10000000 /* RegionDataRect */, region_data.element_type);
    FUNC15(0.0, region_data.x);
    FUNC15(0.0, region_data.y);
    FUNC15(10.0, region_data.width);
    FUNC15(10.0, region_data.height);

    /* No effect with negative width/height */
    status = FUNC6(graphics, 0xffff0000);
    FUNC14(Ok, status);
    color = FUNC12(hdc, 5, 5);
    FUNC14(0, color);

    status = FUNC9(graphics, 2.0, 2.0, MatrixOrderAppend);
    FUNC14(Ok, status);

    status = FUNC6(graphics, 0xffff0000);
    FUNC14(Ok, status);
    color = FUNC12(hdc, 5, 5);
    FUNC14(0, color);

    status = FUNC7(graphics);
    FUNC14(Ok, status);
    status = FUNC8(graphics);
    FUNC14(Ok, status);
    status = FUNC6(graphics, 0xff000000);
    FUNC14(Ok, status);

    status = FUNC9(graphics, 2.0, 2.0, MatrixOrderAppend);
    FUNC14(Ok, status);

    status = FUNC10(graphics, 5, 5, -5, -5, CombineModeReplace);
    FUNC14(Ok, status);
    status = FUNC4(graphics, clip);
    FUNC14(Ok, status);
    status = FUNC5(clip, (BYTE*)&region_data, sizeof(region_data), &region_data_size);
    FUNC14(Ok, status);
    FUNC14(36, region_data_size);
    FUNC14(28, region_data.size);
    FUNC14(0, region_data.num_children);
    FUNC14(0x10000000 /* RegionDataRect */, region_data.element_type);
    FUNC15(0.0, region_data.x);
    FUNC15(0.0, region_data.y);
    FUNC15(5.0, region_data.width);
    FUNC15(5.0, region_data.height);

    status = FUNC6(graphics, 0xffff0000);
    FUNC14(Ok, status);
    color = FUNC12(hdc, 5, 5);
    FUNC14(0xff, color);

    FUNC2(graphics);
    FUNC3(clip);
    FUNC13(hwnd, hdc);
}