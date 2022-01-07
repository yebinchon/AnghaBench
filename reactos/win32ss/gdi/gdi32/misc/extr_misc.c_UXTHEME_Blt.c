
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int HDC ;
typedef int COLORREF ;
typedef int BOOL ;


 int UXTHEME_StretchBlt (int ,int,int,int,int,int ,int,int,int,int,int ,int ) ;

__attribute__((used)) static inline BOOL UXTHEME_Blt(HDC hdcDest, int nXOriginDest, int nYOriginDest, int nWidthDest, int nHeightDest,
                               HDC hdcSrc, int nXOriginSrc, int nYOriginSrc,
                               INT transparent, COLORREF transcolor)
{
    return UXTHEME_StretchBlt(hdcDest, nXOriginDest, nYOriginDest, nWidthDest, nHeightDest,
                              hdcSrc, nXOriginSrc, nYOriginSrc, nWidthDest, nHeightDest,
                              transparent, transcolor);
}
