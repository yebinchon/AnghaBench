#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_8__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_1__* LPRECT ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;

/* Variables and functions */
 int BDR_INNER ; 
 int BDR_OUTER ; 
 int BF_ADJUST ; 
 int BF_BOTTOM ; 
 int BF_BOTTOMLEFT ; 
 int BF_BOTTOMRIGHT ; 
 int BF_FLAT ; 
 int BF_LEFT ; 
 int BF_MIDDLE ; 
 int BF_MONO ; 
 int BF_RIGHT ; 
 int BF_SOFT ; 
 int BF_TOP ; 
 int BF_TOPLEFT ; 
 int BF_TOPRIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char EDGE_FILL ; 
 char EDGE_WINDOW ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* LTInnerNormal ; 
 char* LTInnerSoft ; 
 char* LTOuterNormal ; 
 char* LTOuterSoft ; 
 char* LTRBInnerFlat ; 
 int* LTRBInnerMono ; 
 char* LTRBOuterFlat ; 
 int* LTRBOuterMono ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  NULL_PEN ; 
 char* RBInnerNormal ; 
 char* RBInnerSoft ; 
 char* RBOuterNormal ; 
 char* RBOuterSoft ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static HRESULT FUNC8 (HDC hdc, HTHEME theme, int part, int state,
                               const RECT* rc, UINT uType, 
                               UINT uFlags, LPRECT contentsRect)
{
    signed char LTInnerI, LTOuterI;
    signed char RBInnerI, RBOuterI;
    HPEN LTInnerPen, LTOuterPen;
    HPEN RBInnerPen, RBOuterPen;
    RECT InnerRect = *rc;
    POINT SavePoint;
    HPEN SavePen;
    int LBpenplus = 0;
    int LTpenplus = 0;
    int RTpenplus = 0;
    int RBpenplus = 0;
    HRESULT retval = (((uType & BDR_INNER) == BDR_INNER
                       || (uType & BDR_OUTER) == BDR_OUTER)
                      && !(uFlags & (BF_FLAT|BF_MONO)) ) ? E_FAIL : S_OK;

    /* Init some vars */
    LTInnerPen = LTOuterPen = RBInnerPen = RBOuterPen = FUNC2(NULL_PEN);
    SavePen = FUNC5(hdc, LTInnerPen);

    /* Determine the colors of the edges */
    if(uFlags & BF_MONO)
    {
        LTInnerI = RBInnerI = LTRBInnerMono[uType & (BDR_INNER|BDR_OUTER)];
        LTOuterI = RBOuterI = LTRBOuterMono[uType & (BDR_INNER|BDR_OUTER)];
    }
    else if(uFlags & BF_FLAT)
    {
        LTInnerI = RBInnerI = LTRBInnerFlat[uType & (BDR_INNER|BDR_OUTER)];
        LTOuterI = RBOuterI = LTRBOuterFlat[uType & (BDR_INNER|BDR_OUTER)];

        if( LTInnerI != -1 ) LTInnerI = RBInnerI = EDGE_FILL;
    }
    else if(uFlags & BF_SOFT)
    {
        LTInnerI = LTInnerSoft[uType & (BDR_INNER|BDR_OUTER)];
        LTOuterI = LTOuterSoft[uType & (BDR_INNER|BDR_OUTER)];
        RBInnerI = RBInnerSoft[uType & (BDR_INNER|BDR_OUTER)];
        RBOuterI = RBOuterSoft[uType & (BDR_INNER|BDR_OUTER)];
    }
    else
    {
        LTInnerI = LTInnerNormal[uType & (BDR_INNER|BDR_OUTER)];
        LTOuterI = LTOuterNormal[uType & (BDR_INNER|BDR_OUTER)];
        RBInnerI = RBInnerNormal[uType & (BDR_INNER|BDR_OUTER)];
        RBOuterI = RBOuterNormal[uType & (BDR_INNER|BDR_OUTER)];
    }

    if((uFlags & BF_BOTTOMLEFT) == BF_BOTTOMLEFT)   LBpenplus = 1;
    if((uFlags & BF_TOPRIGHT) == BF_TOPRIGHT)       RTpenplus = 1;
    if((uFlags & BF_BOTTOMRIGHT) == BF_BOTTOMRIGHT) RBpenplus = 1;
    if((uFlags & BF_TOPLEFT) == BF_TOPLEFT)         LTpenplus = 1;

    if(LTInnerI != -1) LTInnerPen = FUNC7 (LTInnerI, theme, part, state);
    if(LTOuterI != -1) LTOuterPen = FUNC7 (LTOuterI, theme, part, state);
    if(RBInnerI != -1) RBInnerPen = FUNC7 (RBInnerI, theme, part, state);
    if(RBOuterI != -1) RBOuterPen = FUNC7 (RBOuterI, theme, part, state);

    FUNC4(hdc, 0, 0, &SavePoint);

    /* Draw the outer edge */
    FUNC5(hdc, LTOuterPen);
    if(uFlags & BF_TOP)
    {
        FUNC4(hdc, InnerRect.left, InnerRect.top, NULL);
        FUNC3(hdc, InnerRect.right, InnerRect.top);
    }
    if(uFlags & BF_LEFT)
    {
        FUNC4(hdc, InnerRect.left, InnerRect.top, NULL);
        FUNC3(hdc, InnerRect.left, InnerRect.bottom);
    }
    FUNC5(hdc, RBOuterPen);
    if(uFlags & BF_BOTTOM)
    {
        FUNC4(hdc, InnerRect.right-1, InnerRect.bottom-1, NULL);
        FUNC3(hdc, InnerRect.left-1, InnerRect.bottom-1);
    }
    if(uFlags & BF_RIGHT)
    {
        FUNC4(hdc, InnerRect.right-1, InnerRect.bottom-1, NULL);
        FUNC3(hdc, InnerRect.right-1, InnerRect.top-1);
    }

    /* Draw the inner edge */
    FUNC5(hdc, LTInnerPen);
    if(uFlags & BF_TOP)
    {
        FUNC4(hdc, InnerRect.left+LTpenplus, InnerRect.top+1, NULL);
        FUNC3(hdc, InnerRect.right-RTpenplus, InnerRect.top+1);
    }
    if(uFlags & BF_LEFT)
    {
        FUNC4(hdc, InnerRect.left+1, InnerRect.top+LTpenplus, NULL);
        FUNC3(hdc, InnerRect.left+1, InnerRect.bottom-LBpenplus);
    }
    FUNC5(hdc, RBInnerPen);
    if(uFlags & BF_BOTTOM)
    {
        FUNC4(hdc, InnerRect.right-1-RBpenplus, InnerRect.bottom-2, NULL);
        FUNC3(hdc, InnerRect.left-1+LBpenplus, InnerRect.bottom-2);
    }
    if(uFlags & BF_RIGHT)
    {
        FUNC4(hdc, InnerRect.right-2, InnerRect.bottom-1-RBpenplus, NULL);
        FUNC3(hdc, InnerRect.right-2, InnerRect.top-1+RTpenplus);
    }

    if( ((uFlags & BF_MIDDLE) && retval) || (uFlags & BF_ADJUST) )
    {
        int add = (LTRBInnerMono[uType & (BDR_INNER|BDR_OUTER)] != -1 ? 1 : 0)
                + (LTRBOuterMono[uType & (BDR_INNER|BDR_OUTER)] != -1 ? 1 : 0);

        if(uFlags & BF_LEFT)   InnerRect.left   += add;
        if(uFlags & BF_RIGHT)  InnerRect.right  -= add;
        if(uFlags & BF_TOP)    InnerRect.top    += add;
        if(uFlags & BF_BOTTOM) InnerRect.bottom -= add;

        if((uFlags & BF_MIDDLE) && retval)
        {
            HBRUSH br = FUNC6 ((uFlags & BF_MONO) ? EDGE_WINDOW : EDGE_FILL, 
                theme, part, state);
            FUNC1(hdc, &InnerRect, br);
            FUNC0 (br);
        }

        if(uFlags & BF_ADJUST)
            *contentsRect = InnerRect;
    }

    /* Cleanup */
    FUNC5(hdc, SavePen);
    FUNC4(hdc, SavePoint.x, SavePoint.y, NULL);
    if(LTInnerI != -1) FUNC0 (LTInnerPen);
    if(LTOuterI != -1) FUNC0 (LTOuterPen);
    if(RBInnerI != -1) FUNC0 (RBInnerPen);
    if(RBOuterI != -1) FUNC0 (RBOuterPen);
    return retval;
}