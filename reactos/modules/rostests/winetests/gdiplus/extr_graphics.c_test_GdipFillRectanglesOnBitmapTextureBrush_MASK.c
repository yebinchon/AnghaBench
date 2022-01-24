#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int right; int left; int bottom; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  GpTexture ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  BLUE_COLOR ; 
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    ARGB color[6] = {0,0,0,0,0,0};
    UINT x = 0;
    UINT y = 0;
    RECT rect = {100, 100, 180, 180};
    UINT width = rect.right - rect.left;
    UINT height = rect.bottom - rect.top;
    UINT src_img_width = width/2;
    UINT src_img_height = height/2;

    GpStatus status = 0;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } src_img;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } dst_img;

    GpTexture *brush = NULL;
    GpGraphics *graphics = NULL;
    BYTE *src_img_data = FUNC0(src_img_width*src_img_height*4);
    DWORD *pixel = (DWORD *)src_img_data;
    FUNC13(pixel != NULL, "Expected src_img_data is valid\n");

    status = FUNC2(width, height, width*4,
            PixelFormat32bppARGB, NULL, &dst_img.bitmap);
    FUNC11(Ok, status);

    /*build a blue solid image!*/
    for(y = 0; y < src_img_height; ++y)
    {
        for(x = 0; x < src_img_width; ++x)
        {
            pixel[x] = BLUE_COLOR;
        }

        pixel += src_img_width;
    }

    status = FUNC2(src_img_width, src_img_height, src_img_width*4,
            PixelFormat32bppARGB, src_img_data, &src_img.bitmap);
    FUNC11(Ok, status);

    status = FUNC3(src_img.image, 0, &brush);
    FUNC11(Ok, status);

    status = FUNC9(dst_img.image, &graphics);
    FUNC11(Ok, status);

    status = FUNC10(graphics, 0, 0, width, height, CombineModeReplace);
    FUNC11(Ok, status);

    status = FUNC7(graphics, (GpBrush*)brush, 0, 0, width/2, height/2);
    FUNC11(Ok, status);

    FUNC4((GpBrush*)brush);
    FUNC5(graphics);

    status = FUNC1(dst_img.bitmap, 0, 0, &color[0]);
    FUNC11(Ok, status);
    status = FUNC1(dst_img.bitmap, 0, 1, &color[1]);
    FUNC11(Ok, status);
    status = FUNC1(dst_img.bitmap, 1, 0, &color[2]);
    FUNC11(Ok, status);
    status = FUNC1(dst_img.bitmap, width/2, 0, &color[3]);
    FUNC11(Ok, status);
    status = FUNC1(dst_img.bitmap, width/2, height/2, &color[4]);
    FUNC11(Ok, status);
    status = FUNC1(dst_img.bitmap, 0, height/2, &color[5]);
    FUNC11(Ok, status);

    FUNC13(FUNC12(color[0]) && FUNC12(color[1]) && FUNC12(color[2]) &&
       color[3] == 0 && color[4] == 0 && color[5] == 0,
       "Expected GdipFillRectangleI take effect!\n" );

    FUNC6(src_img.image);
    FUNC6(dst_img.image);
    FUNC8(src_img_data);
}