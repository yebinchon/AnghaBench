
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {scalar_t__ CtlID; int hDC; } ;
struct TYPE_5__ {int bottom; int right; int top; int left; } ;
struct TYPE_6__ {TYPE_1__ ImageRect; int hPreviewBitmap; } ;
typedef TYPE_2__* PIMAGEADJUST ;
typedef TYPE_3__* LPDRAWITEMSTRUCT ;
typedef scalar_t__ LPARAM ;
typedef int HDC ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 scalar_t__ IDC_PICPREVIEW ;
 int SRCCOPY ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static VOID
Bri_OnDrawItem(PIMAGEADJUST pImgAdj,
           LPARAM lParam)
{
    LPDRAWITEMSTRUCT lpDrawItem;
    HDC hdcMem;

    lpDrawItem = (LPDRAWITEMSTRUCT)lParam;

    hdcMem = CreateCompatibleDC(lpDrawItem->hDC);

    if(lpDrawItem->CtlID == IDC_PICPREVIEW)
    {
        SelectObject(hdcMem,
                     pImgAdj->hPreviewBitmap);

        BitBlt(lpDrawItem->hDC,
               pImgAdj->ImageRect.left,
               pImgAdj->ImageRect.top,
               pImgAdj->ImageRect.right,
               pImgAdj->ImageRect.bottom,
               hdcMem,
               0,
               0,
               SRCCOPY);

        DeleteDC(hdcMem);
    }
}
