
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hDC; } ;
struct TYPE_5__ {scalar_t__ nWidth; int style; } ;
typedef TYPE_1__ ME_Run ;
typedef TYPE_2__ ME_Context ;
typedef scalar_t__ HPEN ;
typedef int COLORREF ;


 int DeleteObject (scalar_t__) ;
 int LineTo (int ,scalar_t__,int) ;
 int MoveToEx (int ,int,int,int *) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 scalar_t__ get_underline_pen (int ,int ) ;

__attribute__((used)) static void draw_underline( ME_Context *c, ME_Run *run, int x, int y, COLORREF color )
{
    HPEN pen;

    pen = get_underline_pen( run->style, color );
    if (pen)
    {
        HPEN old_pen = SelectObject( c->hDC, pen );
        MoveToEx( c->hDC, x, y + 1, ((void*)0) );
        LineTo( c->hDC, x + run->nWidth, y + 1 );
        SelectObject( c->hDC, old_pen );
        DeleteObject( pen );
    }
    return;
}
