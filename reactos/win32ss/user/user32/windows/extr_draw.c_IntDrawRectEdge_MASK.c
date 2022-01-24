#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_6__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_1__* LPRECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int BOOL ;

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
 char COLOR_BTNFACE ; 
 char COLOR_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 char* LTInnerNormal ; 
 char* LTInnerSoft ; 
 char* LTOuterNormal ; 
 char* LTOuterSoft ; 
 char* LTRBInnerFlat ; 
 int* LTRBInnerMono ; 
 char* LTRBOuterFlat ; 
 int* LTRBOuterMono ; 
 int /*<<< orphan*/  NULL_BRUSH ; 
 char* RBInnerNormal ; 
 char* RBInnerSoft ; 
 char* RBOuterNormal ; 
 char* RBOuterSoft ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC4(HDC hdc, LPRECT rc, UINT uType, UINT uFlags, UINT width)
{
    signed char LTInnerI, LTOuterI;
    signed char RBInnerI, RBOuterI;
    HBRUSH lti_brush, lto_brush, rbi_brush, rbo_brush;
    RECT InnerRect = *rc, fill_rect;
    int lbi_offset = 0, lti_offset = 0, rti_offset = 0, rbi_offset = 0;
    BOOL retval = !(   ((uType & BDR_INNER) == BDR_INNER
                       || (uType & BDR_OUTER) == BDR_OUTER)
                      && !(uFlags & (BF_FLAT|BF_MONO)) );

    lti_brush = lto_brush = rbi_brush = rbo_brush = FUNC1(NULL_BRUSH);

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

        /* Bertho Stultiens states above that this function exactly matches win95
         * In win98 BF_FLAT rectangles have an inner border same color as the
        * middle (COLOR_BTNFACE). I believe it's the same for win95 but since
        * I don't know I go with Bertho and just sets it for win98 until proven
        * otherwise.
        *                                          Dennis Björklund, 10 June, 99
        */
	if( LTInnerI != -1 ) LTInnerI = RBInnerI = COLOR_BTNFACE;
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

    if((uFlags & BF_BOTTOMLEFT) == BF_BOTTOMLEFT)   lbi_offset = width;
    if((uFlags & BF_TOPRIGHT) == BF_TOPRIGHT)       rti_offset = width;
    if((uFlags & BF_BOTTOMRIGHT) == BF_BOTTOMRIGHT) rbi_offset = width;
    if((uFlags & BF_TOPLEFT) == BF_TOPLEFT)         lti_offset = width;

    if(LTInnerI != -1) lti_brush = FUNC2(LTInnerI);
    if(LTOuterI != -1) lto_brush = FUNC2(LTOuterI);
    if(RBInnerI != -1) rbi_brush = FUNC2(RBInnerI);
    if(RBOuterI != -1) rbo_brush = FUNC2(RBOuterI);

    /* Draw the outer edge */
    if(uFlags & BF_TOP)
    {
        fill_rect = InnerRect;
        fill_rect.bottom = fill_rect.top + width;
        FUNC0( hdc, &fill_rect, lto_brush );
    }
    if(uFlags & BF_LEFT)
    {
        fill_rect = InnerRect;
        fill_rect.right = fill_rect.left + width;
        FUNC0( hdc, &fill_rect, lto_brush );
    }
    if(uFlags & BF_BOTTOM)
    {
        fill_rect = InnerRect;
        fill_rect.top = fill_rect.bottom - width;
        FUNC0( hdc, &fill_rect, rbo_brush );
    }
    if(uFlags & BF_RIGHT)
    {
        fill_rect = InnerRect;
        fill_rect.left = fill_rect.right - width;
        FUNC0( hdc, &fill_rect, rbo_brush );
    }

    /* Draw the inner edge */
    if(uFlags & BF_TOP)
    {
        FUNC3( &fill_rect, InnerRect.left + lti_offset, InnerRect.top + width,
                 InnerRect.right - rti_offset, InnerRect.top + 2 * width );
        FUNC0( hdc, &fill_rect, lti_brush );
    }
    if(uFlags & BF_LEFT)
    {
        FUNC3( &fill_rect, InnerRect.left + width, InnerRect.top + lti_offset,
                 InnerRect.left + 2 * width, InnerRect.bottom - lbi_offset );
        FUNC0( hdc, &fill_rect, lti_brush );
    }
    if(uFlags & BF_BOTTOM)
    {
        FUNC3( &fill_rect, InnerRect.left + lbi_offset, InnerRect.bottom - 2 * width,
                 InnerRect.right - rbi_offset, InnerRect.bottom - width );
        FUNC0( hdc, &fill_rect, rbi_brush );
    }
    if(uFlags & BF_RIGHT)
    {
        FUNC3( &fill_rect, InnerRect.right - 2 * width, InnerRect.top + rti_offset,
                 InnerRect.right - width, InnerRect.bottom - rbi_offset );
        FUNC0( hdc, &fill_rect, rbi_brush );
    }

    if( ((uFlags & BF_MIDDLE) && retval) || (uFlags & BF_ADJUST) )
    {
        int add = (LTRBInnerMono[uType & (BDR_INNER|BDR_OUTER)] != -1 ? width : 0)
                + (LTRBOuterMono[uType & (BDR_INNER|BDR_OUTER)] != -1 ? width : 0);

        if(uFlags & BF_LEFT)   InnerRect.left   += add;
        if(uFlags & BF_RIGHT)  InnerRect.right  -= add;
        if(uFlags & BF_TOP)    InnerRect.top    += add;
        if(uFlags & BF_BOTTOM) InnerRect.bottom -= add;

        if((uFlags & BF_MIDDLE) && retval)
	{
            FUNC0(hdc, &InnerRect, FUNC2(uFlags & BF_MONO ?
						       COLOR_WINDOW : COLOR_BTNFACE));
	}

	if(uFlags & BF_ADJUST)
	    *rc = InnerRect;
    }

    return retval;
}