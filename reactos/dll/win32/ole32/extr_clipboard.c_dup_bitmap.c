
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bmHeight; int bmWidth; } ;
typedef int HRESULT ;
typedef scalar_t__ HGDIOBJ ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef TYPE_1__ BITMAP ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ CreateCompatibleBitmap (int ,int ,int ) ;
 int CreateCompatibleDC (int *) ;
 int DeleteDC (int ) ;
 int E_FAIL ;
 int GetObjectW (scalar_t__,int,TYPE_1__*) ;
 int SRCCOPY ;
 int S_OK ;
 scalar_t__ SelectObject (int ,scalar_t__) ;

__attribute__((used)) static HRESULT dup_bitmap(HBITMAP src, HBITMAP *pdest)
{
    HDC src_dc;
    HGDIOBJ orig_src_bitmap;
    BITMAP bm;
    HBITMAP dest;

    src_dc = CreateCompatibleDC(((void*)0));
    orig_src_bitmap = SelectObject(src_dc, src);
    GetObjectW(src, sizeof bm, &bm);
    dest = CreateCompatibleBitmap(src_dc, bm.bmWidth, bm.bmHeight);
    if (dest)
    {
        HDC dest_dc = CreateCompatibleDC(((void*)0));
        HGDIOBJ orig_dest_bitmap = SelectObject(dest_dc, dest);
        BitBlt(dest_dc, 0, 0, bm.bmWidth, bm.bmHeight, src_dc, 0, 0, SRCCOPY);
        SelectObject(dest_dc, orig_dest_bitmap);
        DeleteDC(dest_dc);
    }
    SelectObject(src_dc, orig_src_bitmap);
    DeleteDC(src_dc);
    *pdest = dest;
    return dest ? S_OK : E_FAIL;
}
