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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  REAL ;
typedef  int /*<<< orphan*/  PixelFormat ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int InvalidParameter ; 
 int Ok ; 
 int PixelFormat32bppPARGB ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 

__attribute__((used)) static void FUNC14(void)
{
    GpStatus stat;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC11( hwnd );
    GpBitmap *bitmap = NULL;
    PixelFormat format;
    REAL imageres, graphicsres;
    UINT width, height;

    stat = FUNC1(hdc, &graphics);
    FUNC12(Ok, stat);

    stat = FUNC0(12, 13, NULL, &bitmap);
    FUNC12(InvalidParameter, stat);

    stat = FUNC0(12, 13, graphics, NULL);
    FUNC12(InvalidParameter, stat);

    stat = FUNC0(12, 13, graphics, &bitmap);
    FUNC12(Ok, stat);

    stat = FUNC8((GpImage*)bitmap, &format);
    FUNC12(Ok, stat);
    FUNC12(PixelFormat32bppPARGB, format);

    stat = FUNC4(graphics, &graphicsres);
    FUNC12(Ok, stat);

    stat = FUNC7((GpImage*)bitmap, &imageres);
    FUNC12(Ok, stat);
    FUNC13(graphicsres, imageres);

    stat = FUNC5(graphics, &graphicsres);
    FUNC12(Ok, stat);

    stat = FUNC9((GpImage*)bitmap, &imageres);
    FUNC12(Ok, stat);
    FUNC13(graphicsres, imageres);

    stat = FUNC10((GpImage*)bitmap, &width);
    FUNC12(Ok, stat);
    FUNC12(12, width);

    stat = FUNC6((GpImage*)bitmap, &height);
    FUNC12(Ok, stat);
    FUNC12(13, height);

    FUNC2(graphics);
    FUNC3((GpImage*)bitmap);
}