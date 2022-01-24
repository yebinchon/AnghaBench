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
struct TYPE_7__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int /*<<< orphan*/  biCompression; } ;
struct TYPE_9__ {TYPE_1__ bmiHeader; } ;
struct TYPE_8__ {int bmWidth; int bmHeight; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFO ;
typedef  TYPE_2__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ H32BppBitmap ; 
 int /*<<< orphan*/  HInst ; 
 int /*<<< orphan*/  HMemDC ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 TYPE_3__ bmpi ; 
 int* pBmpBits ; 

BOOL FUNC11(HDC hDC, BITMAP *bmp)
{
  FUNC10(&bmpi, sizeof(BITMAPINFO));
  bmpi.bmiHeader.biSize = sizeof(BITMAPINFO);
  bmpi.bmiHeader.biWidth = bmp->bmWidth;
  bmpi.bmiHeader.biHeight = bmp->bmHeight;
  bmpi.bmiHeader.biPlanes = 1;
  bmpi.bmiHeader.biBitCount = 32;
  bmpi.bmiHeader.biCompression = BI_RGB;
  bmpi.bmiHeader.biSizeImage = 4 * bmpi.bmiHeader.biWidth * bmpi.bmiHeader.biHeight;
  H32BppBitmap = FUNC2(hDC, &bmpi, DIB_RGB_COLORS, &pBmpBits, 0, 0);
  if(H32BppBitmap)
  {
    HBITMAP bmpalpha;
    FUNC9(hDC, H32BppBitmap);
    FUNC0(hDC, 0, 0, bmp->bmWidth, bmp->bmHeight, HMemDC, 0, 0, SRCCOPY);

    /* load and apply alpha channel */
    bmpalpha = FUNC7(HInst, FUNC8(2000), IMAGE_BITMAP,
                            0, 0, 0);
    if(bmpalpha)
    {
      COLORREF *col = pBmpBits;
      int x, y;
      HDC hdcTemp = FUNC1(NULL);
      if(!hdcTemp)
      {
        FUNC4(bmpalpha);
        return FALSE;
      }
      FUNC9(hdcTemp, bmpalpha);

      for(y = 0; y < bmp->bmHeight; y++)
      {
        for(x = 0; x < bmp->bmWidth; x++)
        {
          COLORREF Color = (COLORREF)FUNC6(FUNC5(hdcTemp, x, y)) << 24;
          *col++ |= Color;
        }
      }

      FUNC4(bmpalpha);
      FUNC3(hdcTemp);
      return TRUE;
    }
    return FALSE;
  }
  return FALSE;
}