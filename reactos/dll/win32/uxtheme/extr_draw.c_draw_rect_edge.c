
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_8__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef TYPE_1__* LPRECT ;
typedef int HTHEME ;
typedef scalar_t__ HRESULT ;
typedef int HPEN ;
typedef int HDC ;
typedef int HBRUSH ;


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
 int DeleteObject (int ) ;
 char EDGE_FILL ;
 char EDGE_WINDOW ;
 scalar_t__ E_FAIL ;
 int FillRect (int ,TYPE_1__*,int ) ;
 int GetStockObject (int ) ;
 char* LTInnerNormal ;
 char* LTInnerSoft ;
 char* LTOuterNormal ;
 char* LTOuterSoft ;
 char* LTRBInnerFlat ;
 int* LTRBInnerMono ;
 char* LTRBOuterFlat ;
 int* LTRBOuterMono ;
 int LineTo (int ,int,int) ;
 int MoveToEx (int ,int,int,TYPE_2__*) ;
 int NULL_PEN ;
 char* RBInnerNormal ;
 char* RBInnerSoft ;
 char* RBOuterNormal ;
 char* RBOuterSoft ;
 scalar_t__ S_OK ;
 int SelectObject (int ,int ) ;
 int get_edge_brush (char,int ,int,int) ;
 int get_edge_pen (char,int ,int,int) ;

__attribute__((used)) static HRESULT draw_rect_edge (HDC hdc, HTHEME theme, int part, int state,
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


    LTInnerPen = LTOuterPen = RBInnerPen = RBOuterPen = GetStockObject(NULL_PEN);
    SavePen = SelectObject(hdc, LTInnerPen);


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

    if((uFlags & BF_BOTTOMLEFT) == BF_BOTTOMLEFT) LBpenplus = 1;
    if((uFlags & BF_TOPRIGHT) == BF_TOPRIGHT) RTpenplus = 1;
    if((uFlags & BF_BOTTOMRIGHT) == BF_BOTTOMRIGHT) RBpenplus = 1;
    if((uFlags & BF_TOPLEFT) == BF_TOPLEFT) LTpenplus = 1;

    if(LTInnerI != -1) LTInnerPen = get_edge_pen (LTInnerI, theme, part, state);
    if(LTOuterI != -1) LTOuterPen = get_edge_pen (LTOuterI, theme, part, state);
    if(RBInnerI != -1) RBInnerPen = get_edge_pen (RBInnerI, theme, part, state);
    if(RBOuterI != -1) RBOuterPen = get_edge_pen (RBOuterI, theme, part, state);

    MoveToEx(hdc, 0, 0, &SavePoint);


    SelectObject(hdc, LTOuterPen);
    if(uFlags & BF_TOP)
    {
        MoveToEx(hdc, InnerRect.left, InnerRect.top, ((void*)0));
        LineTo(hdc, InnerRect.right, InnerRect.top);
    }
    if(uFlags & BF_LEFT)
    {
        MoveToEx(hdc, InnerRect.left, InnerRect.top, ((void*)0));
        LineTo(hdc, InnerRect.left, InnerRect.bottom);
    }
    SelectObject(hdc, RBOuterPen);
    if(uFlags & BF_BOTTOM)
    {
        MoveToEx(hdc, InnerRect.right-1, InnerRect.bottom-1, ((void*)0));
        LineTo(hdc, InnerRect.left-1, InnerRect.bottom-1);
    }
    if(uFlags & BF_RIGHT)
    {
        MoveToEx(hdc, InnerRect.right-1, InnerRect.bottom-1, ((void*)0));
        LineTo(hdc, InnerRect.right-1, InnerRect.top-1);
    }


    SelectObject(hdc, LTInnerPen);
    if(uFlags & BF_TOP)
    {
        MoveToEx(hdc, InnerRect.left+LTpenplus, InnerRect.top+1, ((void*)0));
        LineTo(hdc, InnerRect.right-RTpenplus, InnerRect.top+1);
    }
    if(uFlags & BF_LEFT)
    {
        MoveToEx(hdc, InnerRect.left+1, InnerRect.top+LTpenplus, ((void*)0));
        LineTo(hdc, InnerRect.left+1, InnerRect.bottom-LBpenplus);
    }
    SelectObject(hdc, RBInnerPen);
    if(uFlags & BF_BOTTOM)
    {
        MoveToEx(hdc, InnerRect.right-1-RBpenplus, InnerRect.bottom-2, ((void*)0));
        LineTo(hdc, InnerRect.left-1+LBpenplus, InnerRect.bottom-2);
    }
    if(uFlags & BF_RIGHT)
    {
        MoveToEx(hdc, InnerRect.right-2, InnerRect.bottom-1-RBpenplus, ((void*)0));
        LineTo(hdc, InnerRect.right-2, InnerRect.top-1+RTpenplus);
    }

    if( ((uFlags & BF_MIDDLE) && retval) || (uFlags & BF_ADJUST) )
    {
        int add = (LTRBInnerMono[uType & (BDR_INNER|BDR_OUTER)] != -1 ? 1 : 0)
                + (LTRBOuterMono[uType & (BDR_INNER|BDR_OUTER)] != -1 ? 1 : 0);

        if(uFlags & BF_LEFT) InnerRect.left += add;
        if(uFlags & BF_RIGHT) InnerRect.right -= add;
        if(uFlags & BF_TOP) InnerRect.top += add;
        if(uFlags & BF_BOTTOM) InnerRect.bottom -= add;

        if((uFlags & BF_MIDDLE) && retval)
        {
            HBRUSH br = get_edge_brush ((uFlags & BF_MONO) ? EDGE_WINDOW : EDGE_FILL,
                theme, part, state);
            FillRect(hdc, &InnerRect, br);
            DeleteObject (br);
        }

        if(uFlags & BF_ADJUST)
            *contentsRect = InnerRect;
    }


    SelectObject(hdc, SavePen);
    MoveToEx(hdc, SavePoint.x, SavePoint.y, ((void*)0));
    if(LTInnerI != -1) DeleteObject (LTInnerPen);
    if(LTOuterI != -1) DeleteObject (LTOuterPen);
    if(RBInnerI != -1) DeleteObject (RBInnerPen);
    if(RBOuterI != -1) DeleteObject (RBOuterPen);
    return retval;
}
