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
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpWrapMode ;
typedef  int /*<<< orphan*/  GpTexture ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  GpBitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WrapModeClamp ; 
 int /*<<< orphan*/  WrapModeTile ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void)
{
    GpStatus status;
    GpTexture *texture;
    GpGraphics *graphics = NULL;
    GpBitmap *bitmap;
    HDC hdc = FUNC8(0);
    GpWrapMode wrap;

    status = FUNC1(hdc, &graphics);
    FUNC10(Ok, status);
    status = FUNC0(1, 1, graphics, &bitmap);
    FUNC10(Ok, status);

    status = FUNC2((GpImage*)bitmap, WrapModeTile, &texture);
    FUNC10(Ok, status);

    /* NULL */
    status = FUNC6(NULL, NULL);
    FUNC10(InvalidParameter, status);
    status = FUNC6(texture, NULL);
    FUNC10(InvalidParameter, status);
    status = FUNC6(NULL, &wrap);
    FUNC10(InvalidParameter, status);

    /* get */
    wrap = WrapModeClamp;
    status = FUNC6(texture, &wrap);
    FUNC10(Ok, status);
    FUNC10(WrapModeTile, wrap);
    /* set, then get */
    wrap = WrapModeClamp;
    status = FUNC7(texture, wrap);
    FUNC10(Ok, status);
    wrap = WrapModeTile;
    status = FUNC6(texture, &wrap);
    FUNC10(Ok, status);
    FUNC10(WrapModeClamp, wrap);

    status = FUNC3((GpBrush*)texture);
    FUNC10(Ok, status);
    status = FUNC5((GpImage*)bitmap);
    FUNC10(Ok, status);
    status = FUNC4(graphics);
    FUNC10(Ok, status);
    FUNC9(0, hdc);
}