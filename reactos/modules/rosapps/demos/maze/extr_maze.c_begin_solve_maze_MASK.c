#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  grayPattern ;
typedef  int /*<<< orphan*/  argbq ;
struct TYPE_9__ {size_t x; size_t y; int dir; } ;
struct TYPE_7__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
struct TYPE_8__ {scalar_t__ bmiColors; TYPE_1__ bmiHeader; } ;
typedef  long RGBQUAD ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 void* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int WALL_TOP ; 
 int end_dir ; 
 size_t end_x ; 
 size_t end_y ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 void* hBrushDead ; 
 void* hBrushLiving ; 
 int /*<<< orphan*/  hDC ; 
 int /*<<< orphan*/  hWnd ; 
 TYPE_2__* FUNC5 (int) ; 
 int** maze ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,long*,int) ; 
 TYPE_3__* path ; 
 size_t pathi ; 
 int start_dir ; 
 size_t start_x ; 
 size_t start_y ; 

__attribute__((used)) static void
FUNC7()                             /* solve it with graphical feedback */
{
  static long grayPattern[] = {
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa
  };
  static RGBQUAD argbq[] = {
  	{ 0, 0, 255, 0 },
	{ 255, 255, 255, 0 }
  };
  BITMAPINFO *pbmi;

  hDC = FUNC2(hWnd);
  pbmi = FUNC5(sizeof(BITMAPINFOHEADER) + sizeof(argbq) + sizeof(grayPattern));
  pbmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
  pbmi->bmiHeader.biWidth = 8;
  pbmi->bmiHeader.biHeight = 8;
  pbmi->bmiHeader.biPlanes = 1;
  pbmi->bmiHeader.biBitCount = 1;
  pbmi->bmiHeader.biCompression = BI_RGB;
  (void) FUNC6(pbmi->bmiColors, argbq, sizeof(argbq));
  (void) FUNC6(pbmi->bmiColors + 2, grayPattern, sizeof(grayPattern));
#if 0
  /* FIXME Pattern brushes not yet implemented in ReactOS */
  hBrushDead = CreateDIBPatternBrushPt(pbmi, DIB_RGB_COLORS);
#else
  hBrushDead = FUNC1(FUNC3(255, 0, 0));
#endif
//  hBrushDead = CreateHatchBrush(HS_DIAGCROSS, RGB(255, 0, 0));
  FUNC4(pbmi);
  hBrushLiving = FUNC1(FUNC3(0, 255, 0));

  /* plug up the surrounding wall */
  maze[start_x][start_y] |= (WALL_TOP >> start_dir);
  maze[end_x][end_y] |= (WALL_TOP >> end_dir);

  /* initialize search path */
  pathi = 0;
  path[pathi].x = end_x;
  path[pathi].y = end_y;
  path[pathi].dir = -1;
}