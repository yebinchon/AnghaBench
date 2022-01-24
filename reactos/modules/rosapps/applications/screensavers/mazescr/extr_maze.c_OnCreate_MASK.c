#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  grayPattern ;
typedef  int /*<<< orphan*/  argbq ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
struct TYPE_7__ {scalar_t__ bmiColors; TYPE_1__ bmiHeader; } ;
typedef  long RGBQUAD ;
typedef  int /*<<< orphan*/  LPCREATESTRUCT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 void* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  TRUE ; 
 int bw ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int grid_height ; 
 int grid_width ; 
 void* hBrushDead ; 
 void* hBrushLiving ; 
 int /*<<< orphan*/  hDC ; 
 int /*<<< orphan*/  hPenWall ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,long*,int) ; 
 int FUNC9 () ; 
 int size ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC13(HWND hWnd, LPCREATESTRUCT lpCreateStruct)
{
    FUNC10((unsigned) FUNC12(NULL));

    FUNC5();

    if (size < 2) {
        size = 7 + (FUNC9() % 30);
    }
    grid_width = grid_height = size;
    bw = (size > 6 ? 3 : (size - 1) / 2);
    
#if 0
    /* FIXME Pattern brushes not yet implemented in ReactOS */
    {
        static long grayPattern [] = {
            0x55555555,
            0xaaaaaaaa,
            0x55555555,
            0xaaaaaaaa,
            0x55555555,
            0xaaaaaaaa,
            0x55555555,
            0xaaaaaaaa
        };
        static RGBQUAD argbq [] = {
            { 0, 0, 255, 0 },
            { 255, 255, 255, 0 }
        };
        BITMAPINFO *pbmi;

        pbmi = malloc(sizeof(BITMAPINFOHEADER) + sizeof(argbq) + sizeof(grayPattern));
        pbmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
        pbmi->bmiHeader.biWidth = 8;
        pbmi->bmiHeader.biHeight = 8;
        pbmi->bmiHeader.biPlanes = 1;
        pbmi->bmiHeader.biBitCount = 1;
        pbmi->bmiHeader.biCompression = BI_RGB;
        (void) memcpy(pbmi->bmiColors, argbq, sizeof(argbq));
        (void) memcpy(pbmi->bmiColors + 2, grayPattern, sizeof(grayPattern));
        hBrushDead = CreateDIBPatternBrushPt(pbmi, DIB_RGB_COLORS);
        //    hBrushDead = CreateHatchBrush(HS_DIAGCROSS, RGB(255, 0, 0));
        free(pbmi);
    }
#else
    hBrushDead = FUNC2(FUNC4(255, 0, 0));
#endif
    hBrushLiving = FUNC2(FUNC4(0, 255, 0));
    hPenWall = FUNC1(PS_SOLID, 3, FUNC4(150, 150, 150));

    hDC = FUNC3(hWnd);

    FUNC11(hWnd, 1);

    return TRUE;
}