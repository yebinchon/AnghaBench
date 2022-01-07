
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bm ;
struct TYPE_3__ {int bmHeight; int bmWidth; } ;
typedef int LONG_PTR ;
typedef int HWND ;
typedef scalar_t__ HBITMAP ;
typedef int DWORD ;
typedef TYPE_1__ BITMAP ;


 scalar_t__ GetObjectType (scalar_t__) ;
 int GetObjectW (scalar_t__,int,TYPE_1__*) ;
 int HICON_GWL_OFFSET ;
 scalar_t__ OBJ_BITMAP ;
 int SS_BITMAP ;
 int SS_CENTERIMAGE ;
 int SS_REALSIZECONTROL ;
 int SS_TYPEMASK ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 scalar_t__ SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int WARN (char*) ;

__attribute__((used)) static HBITMAP STATIC_SetBitmap( HWND hwnd, HBITMAP hBitmap, DWORD style )
{
    HBITMAP hOldBitmap;

    if ((style & SS_TYPEMASK) != SS_BITMAP) return 0;
    if (hBitmap && GetObjectType(hBitmap) != OBJ_BITMAP) {
        WARN("hBitmap != 0, but it's not a bitmap\n");
        return 0;
    }
    hOldBitmap = (HBITMAP)SetWindowLongPtrW( hwnd, HICON_GWL_OFFSET, (LONG_PTR)hBitmap );
    if (hBitmap && !(style & SS_CENTERIMAGE) && !(style & SS_REALSIZECONTROL))
    {
        BITMAP bm;
        GetObjectW(hBitmap, sizeof(bm), &bm);
        {
            SetWindowPos( hwnd, 0, 0, 0, bm.bmWidth, bm.bmHeight,
                          SWP_NOACTIVATE | SWP_NOMOVE | SWP_NOZORDER );
        }

    }
    return hOldBitmap;
}
