
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cyTopHeight; scalar_t__ cyBottomHeight; scalar_t__ cxLeftWidth; scalar_t__ cxRightWidth; } ;
struct TYPE_9__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_8__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__ MARGINS ;
typedef int INT ;
typedef int HRESULT ;
typedef int * HGDIOBJ ;
typedef int * HDC ;
typedef int * HBITMAP ;
typedef int COLORREF ;
typedef int BOOL ;


 int * CreateBitmap (scalar_t__,scalar_t__,int,int,int *) ;
 int * CreateCompatibleDC (int *) ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int GetLastError () ;
 int HRESULT_FROM_WIN32 (int ) ;
 void* MulDiv (scalar_t__,scalar_t__,scalar_t__) ;
 int OffsetViewportOrgEx (int *,scalar_t__,scalar_t__,TYPE_2__*) ;
 int ST_STRETCH ;
 int ST_TILE ;
 int ST_TRUESIZE ;
 int S_OK ;
 int * SelectObject (int *,int *) ;
 int SetViewportOrgEx (int *,int,int,int *) ;
 int UXTHEME_Blt (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__,scalar_t__,int ,int ) ;
 int UXTHEME_SizedBlt (int *,int,int,int,int,int *,scalar_t__,int,int,int,int,int ,int ) ;
 int UXTHEME_StretchBlt (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 void* abs (scalar_t__) ;

__attribute__((used)) static HRESULT UXTHEME_DrawImageBackground(HDC hdc, HBITMAP bmpSrc, RECT *prcSrc, INT transparent,
                                    COLORREF transparentcolor, BOOL borderonly, int sizingtype, MARGINS *psm, RECT *pRect)
{
    HRESULT hr = S_OK;
    HBITMAP bmpSrcResized = ((void*)0);
    HGDIOBJ oldSrc;
    HDC hdcSrc, hdcOrigSrc = ((void*)0);
    RECT rcDst;
    POINT dstSize;
    POINT srcSize;
    RECT rcSrc;
    MARGINS sm;

    rcDst = *pRect;
    rcSrc = *prcSrc;
    sm = *psm;

    hdcSrc = CreateCompatibleDC(hdc);
    if(!hdcSrc) {
        hr = HRESULT_FROM_WIN32(GetLastError());
        return hr;
    }
    oldSrc = SelectObject(hdcSrc, bmpSrc);

    dstSize.x = rcDst.right-rcDst.left;
    dstSize.y = rcDst.bottom-rcDst.top;
    srcSize.x = rcSrc.right-rcSrc.left;
    srcSize.y = rcSrc.bottom-rcSrc.top;

    if(sizingtype == ST_TRUESIZE) {
        if(!UXTHEME_StretchBlt(hdc, rcDst.left, rcDst.top, dstSize.x, dstSize.y,
                                hdcSrc, rcSrc.left, rcSrc.top, srcSize.x, srcSize.y,
                                transparent, transparentcolor))
            hr = HRESULT_FROM_WIN32(GetLastError());
    }
    else {
        HDC hdcDst = ((void*)0);
        POINT org;

        dstSize.x = abs(dstSize.x);
        dstSize.y = abs(dstSize.y);





        if (sm.cyTopHeight + sm.cyBottomHeight > dstSize.y || sm.cxLeftWidth + sm.cxRightWidth > dstSize.x) {
            if (sm.cyTopHeight + sm.cyBottomHeight > dstSize.y) {
                sm.cyTopHeight = MulDiv(sm.cyTopHeight, dstSize.y, srcSize.y);
                sm.cyBottomHeight = dstSize.y - sm.cyTopHeight;
                srcSize.y = dstSize.y;
            }

            if (sm.cxLeftWidth + sm.cxRightWidth > dstSize.x) {
                sm.cxLeftWidth = MulDiv(sm.cxLeftWidth, dstSize.x, srcSize.x);
                sm.cxRightWidth = dstSize.x - sm.cxLeftWidth;
                srcSize.x = dstSize.x;
            }

            hdcOrigSrc = hdcSrc;
            hdcSrc = CreateCompatibleDC(((void*)0));
            bmpSrcResized = CreateBitmap(srcSize.x, srcSize.y, 1, 32, ((void*)0));
            SelectObject(hdcSrc, bmpSrcResized);

            UXTHEME_StretchBlt(hdcSrc, 0, 0, srcSize.x, srcSize.y, hdcOrigSrc, rcSrc.left, rcSrc.top,
                               rcSrc.right - rcSrc.left, rcSrc.bottom - rcSrc.top, transparent, transparentcolor);

            rcSrc.left = 0;
            rcSrc.top = 0;
            rcSrc.right = srcSize.x;
            rcSrc.bottom = srcSize.y;
        }


        hdcDst = hdc;
        OffsetViewportOrgEx(hdcDst, rcDst.left, rcDst.top, &org);


        if(!UXTHEME_Blt(hdcDst, 0, 0, sm.cxLeftWidth, sm.cyTopHeight,
                        hdcSrc, rcSrc.left, rcSrc.top,
                        transparent, transparentcolor)) {
            hr = HRESULT_FROM_WIN32(GetLastError());
            goto draw_error;
        }

        if(!UXTHEME_Blt (hdcDst, dstSize.x-sm.cxRightWidth, 0,
                         sm.cxRightWidth, sm.cyTopHeight,
                         hdcSrc, rcSrc.right-sm.cxRightWidth, rcSrc.top,
                         transparent, transparentcolor)) {
            hr = HRESULT_FROM_WIN32(GetLastError());
            goto draw_error;
        }

        if(!UXTHEME_Blt (hdcDst, 0, dstSize.y-sm.cyBottomHeight,
                         sm.cxLeftWidth, sm.cyBottomHeight,
                         hdcSrc, rcSrc.left, rcSrc.bottom-sm.cyBottomHeight,
                         transparent, transparentcolor)) {
            hr = HRESULT_FROM_WIN32(GetLastError());
            goto draw_error;
        }

        if(!UXTHEME_Blt (hdcDst, dstSize.x-sm.cxRightWidth, dstSize.y-sm.cyBottomHeight,
                         sm.cxRightWidth, sm.cyBottomHeight,
                         hdcSrc, rcSrc.right-sm.cxRightWidth, rcSrc.bottom-sm.cyBottomHeight,
                         transparent, transparentcolor)) {
            hr = HRESULT_FROM_WIN32(GetLastError());
            goto draw_error;
        }

        if ((sizingtype == ST_STRETCH) || (sizingtype == ST_TILE)) {
            int destCenterWidth = dstSize.x - (sm.cxLeftWidth + sm.cxRightWidth);
            int srcCenterWidth = srcSize.x - (sm.cxLeftWidth + sm.cxRightWidth);
            int destCenterHeight = dstSize.y - (sm.cyTopHeight + sm.cyBottomHeight);
            int srcCenterHeight = srcSize.y - (sm.cyTopHeight + sm.cyBottomHeight);

            if(destCenterWidth > 0) {

                if(!UXTHEME_SizedBlt (hdcDst, sm.cxLeftWidth, 0,
                                      destCenterWidth, sm.cyTopHeight,
                                      hdcSrc, rcSrc.left+sm.cxLeftWidth, rcSrc.top,
                                      srcCenterWidth, sm.cyTopHeight,
                                      sizingtype, transparent, transparentcolor)) {
                    hr = HRESULT_FROM_WIN32(GetLastError());
                    goto draw_error;
                }

                if(!UXTHEME_SizedBlt (hdcDst, sm.cxLeftWidth, dstSize.y-sm.cyBottomHeight,
                                      destCenterWidth, sm.cyBottomHeight,
                                      hdcSrc, rcSrc.left+sm.cxLeftWidth, rcSrc.bottom-sm.cyBottomHeight,
                                      srcCenterWidth, sm.cyBottomHeight,
                                      sizingtype, transparent, transparentcolor)) {
                    hr = HRESULT_FROM_WIN32(GetLastError());
                    goto draw_error;
                }
            }
            if(destCenterHeight > 0) {

                if(!UXTHEME_SizedBlt (hdcDst, 0, sm.cyTopHeight,
                                      sm.cxLeftWidth, destCenterHeight,
                                      hdcSrc, rcSrc.left, rcSrc.top+sm.cyTopHeight,
                                      sm.cxLeftWidth, srcCenterHeight,
                                      sizingtype,
                                      transparent, transparentcolor)) {
                    hr = HRESULT_FROM_WIN32(GetLastError());
                    goto draw_error;
                }

                if(!UXTHEME_SizedBlt (hdcDst, dstSize.x-sm.cxRightWidth, sm.cyTopHeight,
                                      sm.cxRightWidth, destCenterHeight,
                                      hdcSrc, rcSrc.right-sm.cxRightWidth, rcSrc.top+sm.cyTopHeight,
                                      sm.cxRightWidth, srcCenterHeight,
                                      sizingtype, transparent, transparentcolor)) {
                    hr = HRESULT_FROM_WIN32(GetLastError());
                    goto draw_error;
                }
            }
            if(destCenterHeight > 0 && destCenterWidth > 0) {
                if(!borderonly) {

                    if(!UXTHEME_SizedBlt (hdcDst, sm.cxLeftWidth, sm.cyTopHeight,
                                          destCenterWidth, destCenterHeight,
                                          hdcSrc, rcSrc.left+sm.cxLeftWidth, rcSrc.top+sm.cyTopHeight,
                                          srcCenterWidth, srcCenterHeight,
                                          sizingtype, transparent, transparentcolor)) {
                        hr = HRESULT_FROM_WIN32(GetLastError());
                        goto draw_error;
                    }
                }
            }
        }

draw_error:
        SetViewportOrgEx (hdcDst, org.x, org.y, ((void*)0));
    }
    SelectObject(hdcSrc, oldSrc);
    DeleteDC(hdcSrc);
    if (bmpSrcResized) DeleteObject(bmpSrcResized);
    if (hdcOrigSrc) DeleteDC(hdcOrigSrc);
    *pRect = rcDst;
    return hr;
}
