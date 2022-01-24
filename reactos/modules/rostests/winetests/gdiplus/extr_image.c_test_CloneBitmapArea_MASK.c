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
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  BitmapData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int ImageLockModeRead ; 
 int ImageLockModeWrite ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  WrongState ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpStatus status;
    GpBitmap *bitmap, *copy;
    BitmapData data, data2;

    status = FUNC3(1, 1, 0, PixelFormat24bppRGB, NULL, &bitmap);
    FUNC5(Ok, status);

    status = FUNC0(bitmap, NULL, ImageLockModeRead | ImageLockModeWrite, PixelFormat24bppRGB, &data);
    FUNC5(Ok, status);

    status = FUNC0(bitmap, NULL, ImageLockModeRead, PixelFormat24bppRGB, &data2);
    FUNC5(WrongState, status);

    status = FUNC2(0, 0, 1, 1, PixelFormat24bppRGB, bitmap, &copy);
    FUNC5(Ok, status);

    status = FUNC1(bitmap, &data);
    FUNC5(Ok, status);

    FUNC4((GpImage *)copy);
    FUNC4((GpImage *)bitmap);
}