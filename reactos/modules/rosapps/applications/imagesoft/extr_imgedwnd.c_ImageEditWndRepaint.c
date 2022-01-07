
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_8__ {TYPE_1__ rcPaint; } ;
struct TYPE_7__ {int hDCMem; scalar_t__ hBitmap; } ;
typedef TYPE_2__* PEDIT_WND_INFO ;
typedef TYPE_3__* LPPAINTSTRUCT ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;


 int BitBlt (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,int ) ;
 int SRCCOPY ;
 scalar_t__ SelectObject (int ,scalar_t__) ;

__attribute__((used)) static VOID
ImageEditWndRepaint(PEDIT_WND_INFO Info,
                    HDC hDC,
                    LPPAINTSTRUCT lpps)
{
    HBITMAP hOldBitmap;

    if (Info->hBitmap)
    {
        hOldBitmap = (HBITMAP) SelectObject(Info->hDCMem,
                                            Info->hBitmap);

        BitBlt(hDC,
               lpps->rcPaint.left,
               lpps->rcPaint.top,
               lpps->rcPaint.right - lpps->rcPaint.left,
               lpps->rcPaint.bottom - lpps->rcPaint.top,
               Info->hDCMem,
               lpps->rcPaint.left,
               lpps->rcPaint.top,
               SRCCOPY);

        Info->hBitmap = SelectObject(Info->hDCMem, hOldBitmap);
    }
}
