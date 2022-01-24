#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int right; int left; int bottom; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  BLUE_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int,int) ; 
 int /*<<< orphan*/  hwnd ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int,char*) ; 

__attribute__((used)) static void FUNC20(void)
{
    ARGB color[6] = {0,0,0,0,0,0};
    POINT pt = {0,0};
    RECT rect = {100, 100, 180, 180};
    UINT width = rect.right - rect.left;
    UINT height = rect.bottom - rect.top;
    GpStatus status = 0;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } src_img;
    GpGraphics *graphics = NULL;
    HDC dc = FUNC12( hwnd);
    HDC hdc = FUNC1(dc);
    HBITMAP bmp = FUNC0(dc, width, height);
    HGDIOBJ old = FUNC14(hdc, bmp);

    UINT x = 0;
    UINT y = 0;
    UINT src_img_width = width/2;
    UINT src_img_height = height/2;
    BYTE *src_img_data = FUNC4(src_img_width*src_img_height*4);
    DWORD *pixel = (DWORD *)src_img_data;
    FUNC19(pixel != NULL, "Expected src_img_data is valid\n");

    /*Change the window origin is the key test point*/
    FUNC15(hdc, rect.left, rect.top, &pt);

    /*build a blue solid image!*/
    for(y = 0; y < src_img_height; ++y)
    {
        for(x = 0; x < src_img_width; ++x)
        {
            pixel[x] = BLUE_COLOR;
        }

        pixel += src_img_width;
    }

    status = FUNC5(src_img_width, src_img_height, src_img_width*4,
            PixelFormat32bppARGB, src_img_data, &src_img.bitmap);
    FUNC16(Ok, status);

    status = FUNC6(hdc, &graphics);
    FUNC16(Ok, status);

    status = FUNC9(graphics, src_img.image,
            rect.left+width/2, rect.top+height/2, width/2, height/2,
            0, 0, src_img_width, src_img_height, UnitPixel, NULL, NULL, NULL);
    FUNC16(Ok, status);

    FUNC8(src_img.image);
    FUNC7(graphics);
    FUNC10(src_img_data);

    pixel = FUNC11(hdc, bmp, width, height);
    if (pixel)
    {
       color[0] = FUNC17(width/2, height/2);
       color[1] = FUNC17(width/2+1, height/2);
       color[2] = FUNC17(width/2, height/2+1);
       color[3] = FUNC17(width/2-1, height/2-1);
       color[4] = FUNC17(width/2-1, height-1);
       color[5] = FUNC17(width-1, height/2-1);
    }
    FUNC19(FUNC18(color[0]) && FUNC18(color[1]) && FUNC18(color[2]) &&
       color[3] == 0 && color[4] == 0 && color[5] == 0,
       "Expected GdipDrawImageRectRectI take effect!\n" );
    FUNC10(pixel);

    FUNC14(hdc, old);
    FUNC3(bmp);
    FUNC2(hdc);
    FUNC13(hwnd, dc);
}