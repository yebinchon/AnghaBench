
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT_PTR ;
typedef scalar_t__ UINT ;
typedef int LPWSTR ;
typedef int LPSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef scalar_t__ HMENU ;
typedef scalar_t__ HICON ;
typedef scalar_t__ HDC ;
typedef int HBRUSH ;
typedef scalar_t__ HBITMAP ;
typedef int BOOL ;


 int AppendMenuW (scalar_t__,int,scalar_t__,int ) ;
 int COLOR_MENU ;
 scalar_t__ CreateCompatibleBitmap (scalar_t__,int,int) ;
 scalar_t__ CreateCompatibleDC (scalar_t__) ;
 int CreateSolidBrush (int ) ;
 int DI_NORMAL ;
 int DeleteDC (scalar_t__) ;
 int DeleteObject (int ) ;
 int DestroyMenu (scalar_t__) ;
 int DrawIconEx (scalar_t__,int ,int ,scalar_t__,int,int,int ,int ,int ) ;
 int DrawMenuBar (int ) ;
 int ERR (char*) ;
 int EnableMenuItem (scalar_t__,int ,int) ;
 int FALSE ;
 int GCLP_HICON ;
 int GCLP_HICONSM ;
 scalar_t__ GetClassLongPtrW (int ,int ) ;
 scalar_t__ GetDC (int ) ;
 scalar_t__ GetMenu (int ) ;
 scalar_t__ GetMenuItemCount (scalar_t__) ;
 scalar_t__ GetMenuItemID (scalar_t__,scalar_t__) ;
 int GetSysColor (int ) ;
 scalar_t__ GetSystemMenu (int ,int ) ;
 int GetSystemMetrics (int ) ;
 scalar_t__ HBMMENU_MBAR_CLOSE ;
 scalar_t__ HBMMENU_MBAR_CLOSE_D ;
 scalar_t__ HBMMENU_MBAR_MINIMIZE ;
 scalar_t__ HBMMENU_MBAR_RESTORE ;
 int ICON_BIG ;
 int ICON_SMALL ;
 scalar_t__ IDI_WINLOGO ;
 int IMAGE_ICON ;
 int InsertMenuA (scalar_t__,int ,int,int ,int ) ;
 int LR_DEFAULTCOLOR ;
 scalar_t__ LoadImageW (int ,int ,int ,int,int,int ) ;
 int MF_BITMAP ;
 int MF_BYCOMMAND ;
 int MF_BYPOSITION ;
 int MF_GRAYED ;
 int MF_HELP ;
 int MF_POPUP ;
 int MM_TEXT ;
 int ReleaseDC (int ,scalar_t__) ;
 scalar_t__ SC_CLOSE ;
 int SC_MAXIMIZE ;
 scalar_t__ SC_MINIMIZE ;
 int SC_MOVE ;
 scalar_t__ SC_RESTORE ;
 int SC_SIZE ;
 int SM_CXSMICON ;
 int SM_CYSMICON ;
 scalar_t__ SelectObject (scalar_t__,scalar_t__) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int SetMapMode (scalar_t__,int ) ;
 int SetMenuDefaultItem (scalar_t__,scalar_t__,int ) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WM_GETICON ;
 scalar_t__ is_close_enabled (int ,scalar_t__) ;

__attribute__((used)) static BOOL MDI_AugmentFrameMenu( HWND frame, HWND hChild )
{
    HMENU menu = GetMenu( frame );
    HMENU hSysPopup;
    HBITMAP hSysMenuBitmap = 0;
    HICON hIcon;
    INT nItems;
    UINT iId;

    TRACE("frame %p,child %p\n",frame,hChild);

    if( !menu ) return FALSE;


    nItems = GetMenuItemCount(menu) - 1;
    iId = GetMenuItemID(menu,nItems) ;
    if (iId == SC_RESTORE || iId == SC_CLOSE)
    {
        ERR("system buttons already exist\n");
 return FALSE;
    }


    if (!(hSysPopup = GetSystemMenu(hChild, FALSE)))
    {
        TRACE("child %p doesn't have a system menu\n", hChild);
        return FALSE;
    }

    AppendMenuW(menu, MF_HELP | MF_BITMAP,
                SC_CLOSE, is_close_enabled(hChild, hSysPopup) ?
                (LPCWSTR)HBMMENU_MBAR_CLOSE : (LPCWSTR)HBMMENU_MBAR_CLOSE_D );
    AppendMenuW(menu, MF_HELP | MF_BITMAP,
                SC_RESTORE, (LPCWSTR)HBMMENU_MBAR_RESTORE );
    AppendMenuW(menu, MF_HELP | MF_BITMAP,
                SC_MINIMIZE, (LPCWSTR)HBMMENU_MBAR_MINIMIZE ) ;


    hIcon = (HICON)SendMessageW(hChild, WM_GETICON, ICON_SMALL, 0);
    if (!hIcon)
        hIcon = (HICON)GetClassLongPtrW(hChild, GCLP_HICONSM);
    if (!hIcon)
        hIcon = (HICON)SendMessageW(hChild, WM_GETICON, ICON_BIG, 0);
    if (!hIcon)
        hIcon = (HICON)GetClassLongPtrW(hChild, GCLP_HICON);
    if (!hIcon)
        hIcon = LoadImageW(0, (LPWSTR)IDI_WINLOGO, IMAGE_ICON, GetSystemMetrics(SM_CXSMICON),
                           GetSystemMetrics(SM_CYSMICON), LR_DEFAULTCOLOR);
    if (hIcon)
    {
      HDC hMemDC;
      HBITMAP hBitmap, hOldBitmap;
      HBRUSH hBrush;
      HDC hdc = GetDC(hChild);

      if (hdc)
      {
        int cx, cy;
        cx = GetSystemMetrics(SM_CXSMICON);
        cy = GetSystemMetrics(SM_CYSMICON);
        hMemDC = CreateCompatibleDC(hdc);
        hBitmap = CreateCompatibleBitmap(hdc, cx, cy);
        hOldBitmap = SelectObject(hMemDC, hBitmap);
        SetMapMode(hMemDC, MM_TEXT);
        hBrush = CreateSolidBrush(GetSysColor(COLOR_MENU));
        DrawIconEx(hMemDC, 0, 0, hIcon, cx, cy, 0, hBrush, DI_NORMAL);
        SelectObject (hMemDC, hOldBitmap);
        DeleteObject(hBrush);
        DeleteDC(hMemDC);
        ReleaseDC(hChild, hdc);
        hSysMenuBitmap = hBitmap;
      }
    }

    if( !InsertMenuA(menu,0,MF_BYPOSITION | MF_BITMAP | MF_POPUP,
                     (UINT_PTR)hSysPopup, (LPSTR)hSysMenuBitmap))
    {
        TRACE("not inserted\n");
 DestroyMenu(hSysPopup);
        return FALSE;
    }

    EnableMenuItem(hSysPopup, SC_SIZE, MF_BYCOMMAND | MF_GRAYED);
    EnableMenuItem(hSysPopup, SC_MOVE, MF_BYCOMMAND | MF_GRAYED);
    EnableMenuItem(hSysPopup, SC_MAXIMIZE, MF_BYCOMMAND | MF_GRAYED);
    SetMenuDefaultItem(hSysPopup, SC_CLOSE, FALSE);


    DrawMenuBar(frame);

    return TRUE;
}
