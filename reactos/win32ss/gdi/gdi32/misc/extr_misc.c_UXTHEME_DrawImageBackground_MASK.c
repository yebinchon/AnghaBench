#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ cyTopHeight; scalar_t__ cyBottomHeight; scalar_t__ cxLeftWidth; scalar_t__ cxRightWidth; } ;
struct TYPE_9__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_8__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_3__ MARGINS ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HGDIOBJ ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_2__*) ; 
 int ST_STRETCH ; 
 int ST_TILE ; 
 int ST_TRUESIZE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *,scalar_t__,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC14(HDC hdc, HBITMAP bmpSrc, RECT *prcSrc, INT transparent,
                                    COLORREF transparentcolor, BOOL borderonly, int sizingtype, MARGINS *psm, RECT *pRect)
{
    HRESULT hr = S_OK;
    HBITMAP bmpSrcResized = NULL;
    HGDIOBJ oldSrc;
    HDC hdcSrc, hdcOrigSrc = NULL;
    RECT rcDst;
    POINT dstSize;
    POINT srcSize;
    RECT rcSrc;
    MARGINS sm;

    rcDst = *pRect;
    rcSrc = *prcSrc;
    sm = *psm;

    hdcSrc = FUNC1(hdc);
    if(!hdcSrc) {
        hr = FUNC5(FUNC4());
        return hr;
    }
    oldSrc = FUNC8(hdcSrc, bmpSrc);

    dstSize.x = rcDst.right-rcDst.left;
    dstSize.y = rcDst.bottom-rcDst.top;
    srcSize.x = rcSrc.right-rcSrc.left;
    srcSize.y = rcSrc.bottom-rcSrc.top;

    if(sizingtype == ST_TRUESIZE) {
        if(!FUNC12(hdc, rcDst.left, rcDst.top, dstSize.x, dstSize.y,
                                hdcSrc, rcSrc.left, rcSrc.top, srcSize.x, srcSize.y,
                                transparent, transparentcolor))
            hr = FUNC5(FUNC4());
    }
    else {
        HDC hdcDst = NULL;
        POINT org;

        dstSize.x = FUNC13(dstSize.x);
        dstSize.y = FUNC13(dstSize.y);

        /* Resize source image if destination smaller than margins */
#ifndef __REACTOS__
        /* Revert Wine Commit 2b650fa as it breaks themed Explorer Toolbar Separators
           FIXME: Revisit this when the bug is fixed. CORE-9636 and Wine Bug #38538 */
        if (sm.cyTopHeight + sm.cyBottomHeight > dstSize.y || sm.cxLeftWidth + sm.cxRightWidth > dstSize.x) {
            if (sm.cyTopHeight + sm.cyBottomHeight > dstSize.y) {
                sm.cyTopHeight = FUNC6(sm.cyTopHeight, dstSize.y, srcSize.y);
                sm.cyBottomHeight = dstSize.y - sm.cyTopHeight;
                srcSize.y = dstSize.y;
            }

            if (sm.cxLeftWidth + sm.cxRightWidth > dstSize.x) {
                sm.cxLeftWidth = FUNC6(sm.cxLeftWidth, dstSize.x, srcSize.x);
                sm.cxRightWidth = dstSize.x - sm.cxLeftWidth;
                srcSize.x = dstSize.x;
            }

            hdcOrigSrc = hdcSrc;
            hdcSrc = FUNC1(NULL);
            bmpSrcResized = FUNC0(srcSize.x, srcSize.y, 1, 32, NULL);
            FUNC8(hdcSrc, bmpSrcResized);

            FUNC12(hdcSrc, 0, 0, srcSize.x, srcSize.y, hdcOrigSrc, rcSrc.left, rcSrc.top,
                               rcSrc.right - rcSrc.left, rcSrc.bottom - rcSrc.top, transparent, transparentcolor);

            rcSrc.left = 0;
            rcSrc.top = 0;
            rcSrc.right = srcSize.x;
            rcSrc.bottom = srcSize.y;
        }
#endif /* __REACTOS__ */

        hdcDst = hdc;
        FUNC7(hdcDst, rcDst.left, rcDst.top, &org);

        /* Upper left corner */
        if(!FUNC10(hdcDst, 0, 0, sm.cxLeftWidth, sm.cyTopHeight,
                        hdcSrc, rcSrc.left, rcSrc.top, 
                        transparent, transparentcolor)) {
            hr = FUNC5(FUNC4());
            goto draw_error; 
        }
        /* Upper right corner */
        if(!FUNC10 (hdcDst, dstSize.x-sm.cxRightWidth, 0, 
                         sm.cxRightWidth, sm.cyTopHeight,
                         hdcSrc, rcSrc.right-sm.cxRightWidth, rcSrc.top, 
                         transparent, transparentcolor)) {
            hr = FUNC5(FUNC4());
            goto draw_error; 
        }
        /* Lower left corner */
        if(!FUNC10 (hdcDst, 0, dstSize.y-sm.cyBottomHeight, 
                         sm.cxLeftWidth, sm.cyBottomHeight,
                         hdcSrc, rcSrc.left, rcSrc.bottom-sm.cyBottomHeight, 
                         transparent, transparentcolor)) {
            hr = FUNC5(FUNC4());
            goto draw_error; 
        }
        /* Lower right corner */
        if(!FUNC10 (hdcDst, dstSize.x-sm.cxRightWidth, dstSize.y-sm.cyBottomHeight, 
                         sm.cxRightWidth, sm.cyBottomHeight,
                         hdcSrc, rcSrc.right-sm.cxRightWidth, rcSrc.bottom-sm.cyBottomHeight, 
                         transparent, transparentcolor)) {
            hr = FUNC5(FUNC4());
            goto draw_error; 
        }

        if ((sizingtype == ST_STRETCH) || (sizingtype == ST_TILE)) {
            int destCenterWidth  = dstSize.x - (sm.cxLeftWidth + sm.cxRightWidth);
            int srcCenterWidth   = srcSize.x - (sm.cxLeftWidth + sm.cxRightWidth);
            int destCenterHeight = dstSize.y - (sm.cyTopHeight + sm.cyBottomHeight);
            int srcCenterHeight  = srcSize.y - (sm.cyTopHeight + sm.cyBottomHeight);

            if(destCenterWidth > 0) {
                /* Center top */
                if(!FUNC11 (hdcDst, sm.cxLeftWidth, 0, 
                                      destCenterWidth, sm.cyTopHeight,
                                      hdcSrc, rcSrc.left+sm.cxLeftWidth, rcSrc.top, 
                                      srcCenterWidth, sm.cyTopHeight, 
                                      sizingtype, transparent, transparentcolor)) {
                    hr = FUNC5(FUNC4());
                    goto draw_error; 
                }
                /* Center bottom */
                if(!FUNC11 (hdcDst, sm.cxLeftWidth, dstSize.y-sm.cyBottomHeight, 
                                      destCenterWidth, sm.cyBottomHeight,
                                      hdcSrc, rcSrc.left+sm.cxLeftWidth, rcSrc.bottom-sm.cyBottomHeight, 
                                      srcCenterWidth, sm.cyBottomHeight, 
                                      sizingtype, transparent, transparentcolor)) {
                    hr = FUNC5(FUNC4());
                    goto draw_error; 
                }
            }
            if(destCenterHeight > 0) {
                /* Left center */
                if(!FUNC11 (hdcDst, 0, sm.cyTopHeight, 
                                      sm.cxLeftWidth, destCenterHeight,
                                      hdcSrc, rcSrc.left, rcSrc.top+sm.cyTopHeight, 
                                      sm.cxLeftWidth, srcCenterHeight, 
                                      sizingtype, 
                                      transparent, transparentcolor)) {
                    hr = FUNC5(FUNC4());
                    goto draw_error; 
                }
                /* Right center */
                if(!FUNC11 (hdcDst, dstSize.x-sm.cxRightWidth, sm.cyTopHeight, 
                                      sm.cxRightWidth, destCenterHeight,
                                      hdcSrc, rcSrc.right-sm.cxRightWidth, rcSrc.top+sm.cyTopHeight, 
                                      sm.cxRightWidth, srcCenterHeight, 
                                      sizingtype, transparent, transparentcolor)) {
                    hr = FUNC5(FUNC4());
                    goto draw_error; 
                }
            }
            if(destCenterHeight > 0 && destCenterWidth > 0) {
                if(!borderonly) {
                    /* Center */
                    if(!FUNC11 (hdcDst, sm.cxLeftWidth, sm.cyTopHeight, 
                                          destCenterWidth, destCenterHeight,
                                          hdcSrc, rcSrc.left+sm.cxLeftWidth, rcSrc.top+sm.cyTopHeight, 
                                          srcCenterWidth, srcCenterHeight, 
                                          sizingtype, transparent, transparentcolor)) {
                        hr = FUNC5(FUNC4());
                        goto draw_error; 
                    }
                }
            }
        }

draw_error:
        FUNC9 (hdcDst, org.x, org.y, NULL);
    }
    FUNC8(hdcSrc, oldSrc);
    FUNC2(hdcSrc);
    if (bmpSrcResized) FUNC3(bmpSrcResized);
    if (hdcOrigSrc) FUNC2(hdcOrigSrc);
    *pRect = rcDst;
    return hr;
}