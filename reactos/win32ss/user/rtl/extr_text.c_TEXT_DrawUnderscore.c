
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {int right; int left; int top; int bottom; } ;
struct TYPE_6__ {int cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ RECT ;
typedef int HPEN ;
typedef int HDC ;


 int CreatePen (int ,int,int ) ;
 int DeleteObject (int ) ;
 int GetTextColor (int ) ;
 int GetTextExtentPointW (int ,int const*,int,TYPE_1__*) ;
 int GreDeleteObject (int ) ;
 int GreGetTextColor (int ) ;
 int GreGetTextExtentW (int ,int const*,int,TYPE_1__*,int ) ;
 int GreMoveTo (int ,int,int,int *) ;
 int LineTo (int ,int,int) ;
 int MoveToEx (int ,int,int,int *) ;
 int NtGdiCreatePen (int ,int,int ,int *) ;
 int NtGdiLineTo (int ,int,int) ;
 int NtGdiSelectPen (int ,int ) ;
 int PS_SOLID ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static void TEXT_DrawUnderscore (HDC hdc, int x, int y, const WCHAR *str, int offset, const RECT *rect)
{
    int prefix_x;
    int prefix_end;
    SIZE size;
    HPEN hpen;
    HPEN oldPen;



    GetTextExtentPointW (hdc, str, offset, &size);

    prefix_x = x + size.cx;



    GetTextExtentPointW (hdc, str, offset+1, &size);

    prefix_end = x + size.cx - 1;



    if (rect)
    {
        if (prefix_x > rect->right || prefix_end < rect->left ||
            y < rect->top || y > rect->bottom)
            return;

        if (prefix_x < rect->left ) prefix_x = rect->left;
        if (prefix_end > rect->right) prefix_end = rect->right;
    }
    hpen = CreatePen (PS_SOLID, 1, GetTextColor (hdc));
    oldPen = SelectObject (hdc, hpen);
    MoveToEx (hdc, prefix_x, y, ((void*)0));
    LineTo (hdc, prefix_end, y);
    SelectObject (hdc, oldPen);
    DeleteObject (hpen);

}
