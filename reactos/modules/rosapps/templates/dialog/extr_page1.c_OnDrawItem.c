
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; int bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_10__ {int itemID; int itemAction; int itemState; int hDC; TYPE_1__ rcItem; int hwndItem; } ;
struct TYPE_9__ {int top; int bottom; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_8__ {int tmHeight; } ;
typedef TYPE_2__ TEXTMETRIC ;
typedef int TCHAR ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__* LPDRAWITEMSTRUCT ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef int HDC ;
typedef int HBITMAP ;


 int BUFFER_LEN ;
 int BitBlt (int ,scalar_t__,int,scalar_t__,int,int ,int ,int ,int ) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DrawFocusRect (int ,TYPE_3__*) ;
 int GetTextMetrics (int ,TYPE_2__*) ;
 int LB_GETITEMDATA ;
 int LB_GETTEXT ;



 int ODS_SELECTED ;
 int SRCCOPY ;
 int SelectObject (int ,int ) ;
 int SendMessage (int ,int ,int,scalar_t__) ;
 int TextOut (int ,int ,int,int *,int ) ;
 scalar_t__ XBITMAP ;
 int YBITMAP ;
 int _tcslen (int *) ;
 int hbmpOld ;
 int hbmpPicture ;

__attribute__((used)) static void OnDrawItem(HWND hWnd, LPARAM lParam)
{

    TCHAR tchBuffer[BUFFER_LEN];

    TEXTMETRIC tm;
    int y;
    HDC hdcMem;
    LPDRAWITEMSTRUCT lpdis;
    RECT rcBitmap;

    lpdis = (LPDRAWITEMSTRUCT)lParam;

    if (lpdis->itemID != -1) {

        switch (lpdis->itemAction) {
        case 128:
        case 130:

            hbmpPicture = (HBITMAP)SendMessage(lpdis->hwndItem, LB_GETITEMDATA, lpdis->itemID, (LPARAM)0);
            hdcMem = CreateCompatibleDC(lpdis->hDC);
            hbmpOld = SelectObject(hdcMem, hbmpPicture);
            BitBlt(lpdis->hDC,
                   lpdis->rcItem.left, lpdis->rcItem.top,
                   lpdis->rcItem.right - lpdis->rcItem.left,
                   lpdis->rcItem.bottom - lpdis->rcItem.top,
                   hdcMem, 0, 0, SRCCOPY);

            SendMessage(lpdis->hwndItem, LB_GETTEXT, lpdis->itemID, (LPARAM)tchBuffer);
            GetTextMetrics(lpdis->hDC, &tm);
            y = (lpdis->rcItem.bottom + lpdis->rcItem.top - tm.tmHeight) / 2;
            TextOut(lpdis->hDC, XBITMAP + 6, y, tchBuffer, _tcslen(tchBuffer));
            SelectObject(hdcMem, hbmpOld);
            DeleteDC(hdcMem);

            if (lpdis->itemState & ODS_SELECTED) {

                rcBitmap.left = lpdis->rcItem.left;
                rcBitmap.top = lpdis->rcItem.top;
                rcBitmap.right = lpdis->rcItem.left + XBITMAP;
                rcBitmap.bottom = lpdis->rcItem.top + YBITMAP;

                DrawFocusRect(lpdis->hDC, &rcBitmap);
            }
            break;
        case 129:


            break;
        }
    }
}
