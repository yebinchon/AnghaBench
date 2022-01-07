
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef scalar_t__ HDC ;
typedef int HBITMAP ;
typedef int COLORREF ;
typedef int BOOL ;


 int BitBlt (scalar_t__,int,int,int,int,scalar_t__,int,int,int ) ;
 int CreateCompatibleBitmap (scalar_t__,int,int) ;
 scalar_t__ CreateCompatibleDC (scalar_t__) ;
 int DeleteDC (scalar_t__) ;
 int DeleteObject (int ) ;
 int FALSE ;
 int SRCCOPY ;
 int ST_TILE ;
 int SelectObject (scalar_t__,int ) ;
 int TRUE ;
 int UXTHEME_Blt (scalar_t__,int,int,int,int,scalar_t__,int,int,int ,int ) ;
 int UXTHEME_StretchBlt (scalar_t__,int,int,int,int,scalar_t__,int,int,int,int,int ,int ) ;
 int min (int,int) ;

__attribute__((used)) static inline BOOL UXTHEME_SizedBlt (HDC hdcDst, int nXOriginDst, int nYOriginDst,
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



        if (nWidthSrc >= nWidthDst && nHeightSrc >= nHeightDst)
        {
            int bltWidth = min (nWidthDst, nWidthSrc);
            int bltHeight = min (nHeightDst, nHeightSrc);

            return UXTHEME_Blt (hdcDst, nXOriginDst, nYOriginDst, bltWidth, bltHeight,
                                hdcSrc, nXOriginSrc, nYOriginSrc,
                                transparent, transcolor);
        }




        hdcTemp = CreateCompatibleDC(hdcSrc);
        if (hdcTemp != 0)
        {
            HBITMAP bitmapTemp;
            HBITMAP bitmapOrig;
            int nWidthTemp, nHeightTemp;
            int xOfs, xRemaining;
            int yOfs, yRemaining;
            int growSize;


            nWidthTemp = ((nWidthDst + nWidthSrc - 1) / nWidthSrc) * nWidthSrc;
            nHeightTemp = ((nHeightDst + nHeightSrc - 1) / nHeightSrc) * nHeightSrc;
            bitmapTemp = CreateCompatibleBitmap(hdcSrc, nWidthTemp, nHeightTemp);
            bitmapOrig = SelectObject(hdcTemp, bitmapTemp);


            BitBlt(hdcTemp, 0, 0, nWidthSrc, nHeightSrc, hdcSrc, nXOriginSrc, nYOriginSrc, SRCCOPY);


            xOfs = nWidthSrc;
            xRemaining = nWidthTemp - nWidthSrc;
            growSize = nWidthSrc;
            while (xRemaining > 0)
            {
                growSize = min(growSize, xRemaining);
                BitBlt(hdcTemp, xOfs, 0, growSize, nHeightSrc, hdcTemp, 0, 0, SRCCOPY);
                xOfs += growSize;
                xRemaining -= growSize;
                growSize *= 2;
            }


            yOfs = nHeightSrc;
            yRemaining = nHeightTemp - nHeightSrc;
            growSize = nHeightSrc;
            while (yRemaining > 0)
            {
                growSize = min(growSize, yRemaining);
                BitBlt(hdcTemp, 0, yOfs, nWidthTemp, growSize, hdcTemp, 0, 0, SRCCOPY);
                yOfs += growSize;
                yRemaining -= growSize;
                growSize *= 2;
            }


            result = UXTHEME_Blt (hdcDst, nXOriginDst, nYOriginDst, nWidthDst, nHeightDst,
                          hdcTemp, 0, 0,
                          transparent, transcolor);

            SelectObject(hdcTemp, bitmapOrig);
            DeleteObject(bitmapTemp);
        }
        DeleteDC(hdcTemp);
        return result;
    }
    else
    {
        return UXTHEME_StretchBlt (hdcDst, nXOriginDst, nYOriginDst, nWidthDst, nHeightDst,
                                   hdcSrc, nXOriginSrc, nYOriginSrc, nWidthSrc, nHeightSrc,
                                   transparent, transcolor);
    }
}
