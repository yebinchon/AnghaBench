
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* fltColors; } ;
struct TYPE_7__ {double right; int bottom; } ;
struct TYPE_6__ {int hSelf; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PMAIN_WND_INFO ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int HDC ;
typedef int * HBITMAP ;
typedef int BOOL ;


 int BM_SETIMAGE ;
 int BS_BITMAP ;
 int CBS_DROPDOWN ;
 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int * CreateWindowEx (int ,int ,int *,int,int,int,int,int,int ,int *,int ,int *) ;
 int FALSE ;
 int FloatWindowPaintColorPicker (int *) ;
 int FloatWindowPaintHueSlider (int *) ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetDC (int *) ;
 int IDB_COLORSMORE ;
 int IMAGE_BITMAP ;
 int LR_LOADMAP3DCOLORS ;
 int LR_LOADTRANSPARENT ;
 scalar_t__ LoadImage (int ,int ,int ,int,int,int) ;
 int MAKEINTRESOURCE (int ) ;
 int MakeFlatCombo (int *) ;
 int ReleaseDC (int *,int ) ;
 int SendMessage (int *,int ,int ,int ) ;
 int TRUE ;
 int TextOut (int ,int,int,scalar_t__,int) ;
 int WC_BUTTON ;
 int WC_COMBOBOX ;
 int WC_STATIC ;
 int WS_CHILD ;
 int WS_EX_STATICEDGE ;
 int WS_VISIBLE ;
 scalar_t__ _T (char*) ;
 int hInstance ;

BOOL
FloatToolbarCreateColorsGui(PMAIN_WND_INFO Info)
{
    HWND hColorPicker;
    HWND hHueSlider;
    HWND hMouseButton;
    HWND hMore;
    RECT rect;
    HBITMAP hMoreBitmap;

    GetClientRect(Info->fltColors->hSelf,
                  &rect);

    hColorPicker = CreateWindowEx(0,
                                  WC_STATIC,
                                  ((void*)0),
                                  WS_CHILD | WS_VISIBLE | CBS_DROPDOWN,
                                  2,
                                  2,
                                  (int) (rect.right * 0.65),
                                  rect.bottom - 2,
                                  Info->fltColors->hSelf,
                                  ((void*)0),
                                  hInstance,
                                  ((void*)0));
    if (hColorPicker == ((void*)0))
        return FALSE;

    hHueSlider = CreateWindowEx(0,
                                WC_STATIC,
                                ((void*)0),
                                WS_CHILD | WS_VISIBLE | CBS_DROPDOWN,
                                145,
                                35,
                                25,
                                135,
                                Info->fltColors->hSelf,
                                ((void*)0),
                                hInstance,
                                ((void*)0));
    if (hHueSlider == ((void*)0))
        return FALSE;

    hMouseButton = CreateWindowEx(0,
                                  WC_COMBOBOX,
                                  ((void*)0),
                                  WS_CHILD | WS_VISIBLE | CBS_DROPDOWN,
                                  118, 5, 75, 25,
                                  Info->fltColors->hSelf,
                                  ((void*)0),
                                  hInstance,
                                  ((void*)0));
    if (hMouseButton == ((void*)0))
        return FALSE;

    MakeFlatCombo(hMouseButton);


    SendMessage(hMouseButton, CB_ADDSTRING, 0, (LPARAM)_T("Primary"));
    SendMessage(hMouseButton, CB_ADDSTRING, 0, (LPARAM)_T("Secondary"));
    SendMessage(hMouseButton, CB_SETCURSEL, 0, 0);


    hMore = CreateWindowEx(WS_EX_STATICEDGE,
                           WC_BUTTON,
                           ((void*)0),
                           WS_CHILD | WS_VISIBLE | BS_BITMAP,
                           rect.right - 15,
                           rect.bottom - 15,
                           15, 15,
                           Info->fltColors->hSelf,
                           ((void*)0),
                           hInstance,
                           ((void*)0));
    if (hMore == ((void*)0))
        return FALSE;

    hMoreBitmap = (HBITMAP)LoadImage(hInstance,
                                     MAKEINTRESOURCE(IDB_COLORSMORE),
                                     IMAGE_BITMAP,
                                     12,
                                     11,
                                     LR_LOADTRANSPARENT | LR_LOADMAP3DCOLORS);
    if (hMoreBitmap != ((void*)0))
    {
        SendMessage(hMore,
                    BM_SETIMAGE,
                    IMAGE_BITMAP,
                    (LPARAM)hMoreBitmap);
    }



    FloatWindowPaintHueSlider(hHueSlider);
    FloatWindowPaintColorPicker(hColorPicker);

    if (hColorPicker != ((void*)0))
    {
        HDC hDc = GetDC(hColorPicker);
        TextOut(hDc, 8, 75, _T("Possible layout?"), 16);
        ReleaseDC(hColorPicker, hDc);
    }

    return TRUE;

}
