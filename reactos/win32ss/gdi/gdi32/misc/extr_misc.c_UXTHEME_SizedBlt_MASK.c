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
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int,int,int,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int ST_TILE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int,int,int,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int,int,int,scalar_t__,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int) ; 

__attribute__((used)) static inline BOOL FUNC9 (HDC hdcDst, int nXOriginDst, int nYOriginDst, 
                                     int nWidthDst, int nHeightDst,
                                     HDC hdcSrc, int nXOriginSrc, int nYOriginSrc, 
                                     int nWidthSrc, int nHeightSrc,
                                     int sizingtype, 
                                     INT transparent, COLORREF transcolor)
{
    if (sizingtype == ST_TILE)
    {
        HDC hdcTemp;
        BOOL result = FALSE;

        if (!nWidthSrc || !nHeightSrc) return TRUE;

        /* For destination width/height less than or equal to source
           width/height, do not bother with memory bitmap optimization */
        if (nWidthSrc >= nWidthDst && nHeightSrc >= nHeightDst)
        {
            int bltWidth = FUNC8 (nWidthDst, nWidthSrc);
            int bltHeight = FUNC8 (nHeightDst, nHeightSrc);

            return FUNC6 (hdcDst, nXOriginDst, nYOriginDst, bltWidth, bltHeight,
                                hdcSrc, nXOriginSrc, nYOriginSrc,
                                transparent, transcolor);
        }

        /* Create a DC with a bitmap consisting of a tiling of the source
           bitmap, with standard GDI functions. This is faster than an
           iteration with UXTHEME_Blt(). */
        hdcTemp = FUNC2(hdcSrc);
        if (hdcTemp != 0)
        {
            HBITMAP bitmapTemp;
            HBITMAP bitmapOrig;
            int nWidthTemp, nHeightTemp;
            int xOfs, xRemaining;
            int yOfs, yRemaining;
            int growSize;

            /* Calculate temp dimensions of integer multiples of source dimensions */
            nWidthTemp = ((nWidthDst + nWidthSrc - 1) / nWidthSrc) * nWidthSrc;
            nHeightTemp = ((nHeightDst + nHeightSrc - 1) / nHeightSrc) * nHeightSrc;
            bitmapTemp = FUNC1(hdcSrc, nWidthTemp, nHeightTemp);
            bitmapOrig = FUNC5(hdcTemp, bitmapTemp);

            /* Initial copy of bitmap */
            FUNC0(hdcTemp, 0, 0, nWidthSrc, nHeightSrc, hdcSrc, nXOriginSrc, nYOriginSrc, SRCCOPY);

            /* Extend bitmap in the X direction. Growth of width is exponential */
            xOfs = nWidthSrc;
            xRemaining = nWidthTemp - nWidthSrc;
            growSize = nWidthSrc;
            while (xRemaining > 0)
            {
                growSize = FUNC8(growSize, xRemaining);
                FUNC0(hdcTemp, xOfs, 0, growSize, nHeightSrc, hdcTemp, 0, 0, SRCCOPY);
                xOfs += growSize;
                xRemaining -= growSize;
                growSize *= 2;
            }

            /* Extend bitmap in the Y direction. Growth of height is exponential */
            yOfs = nHeightSrc;
            yRemaining = nHeightTemp - nHeightSrc;
            growSize = nHeightSrc;
            while (yRemaining > 0)
            {
                growSize = FUNC8(growSize, yRemaining);
                FUNC0(hdcTemp, 0, yOfs, nWidthTemp, growSize, hdcTemp, 0, 0, SRCCOPY);
                yOfs += growSize;
                yRemaining -= growSize;
                growSize *= 2;
            }

            /* Use temporary hdc for source */
            result = FUNC6 (hdcDst, nXOriginDst, nYOriginDst, nWidthDst, nHeightDst,
                          hdcTemp, 0, 0,
                          transparent, transcolor);

            FUNC5(hdcTemp, bitmapOrig);
            FUNC4(bitmapTemp);
        }
        FUNC3(hdcTemp);
        return result;
    }
    else
    {
        return FUNC7 (hdcDst, nXOriginDst, nYOriginDst, nWidthDst, nHeightDst,
                                   hdcSrc, nXOriginSrc, nYOriginSrc, nWidthSrc, nHeightSrc,
                                   transparent, transcolor);
    }
}