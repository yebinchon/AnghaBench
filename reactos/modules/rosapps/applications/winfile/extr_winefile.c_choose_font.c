
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
struct TYPE_13__ {int cy; } ;
struct TYPE_12__ {int hInstance; TYPE_6__ spaceSize; scalar_t__ hfont; int hmdiclient; } ;
struct TYPE_11__ {int lStructSize; int Flags; int nSizeMax; scalar_t__ nSizeMin; int nFontType; int * lpszStyle; int hInstance; int * lpTemplateName; int * lpfnHook; scalar_t__ lCustData; int rgbColors; int * lpLogFont; int * hDC; scalar_t__ hwndOwner; } ;
struct TYPE_9__ {int hwnd; } ;
struct TYPE_8__ {int hwnd; } ;
struct TYPE_10__ {TYPE_2__ right; TYPE_1__ left; } ;
typedef int LOGFONTW ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef TYPE_3__ ChildWnd ;
typedef TYPE_4__ CHOOSEFONTW ;


 int BUFFER_LEN ;
 int CF_FORCEFONTEXIST ;
 int CF_INITTOLOGFONTSTRUCT ;
 int CF_LIMITSIZE ;
 int CF_NOSCRIPTSEL ;
 int CF_NOVERTFONTS ;
 int CF_SCREENFONTS ;
 scalar_t__ ChooseFontW (TYPE_4__*) ;
 scalar_t__ CommDlgExtendedError () ;
 scalar_t__ CreateFontIndirectW (int *) ;
 int DeleteObject (scalar_t__) ;
 int GWLP_USERDATA ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 int GetDC (scalar_t__) ;
 scalar_t__ GetNextWindow (scalar_t__,int ) ;
 int GetObjectW (scalar_t__,int,int *) ;
 int GetTextExtentPoint32W (int ,int ,int,TYPE_6__*) ;
 scalar_t__ GetWindow (int ,int ) ;
 scalar_t__ GetWindowLongPtrW (scalar_t__,int ) ;
 TYPE_5__ Globals ;
 int IDS_FONT_SEL_DLG_NAME ;
 int IDS_FONT_SEL_ERROR ;
 scalar_t__ IMAGE_HEIGHT ;
 int InvalidateRect (int ,int *,int ) ;
 int LB_SETITEMHEIGHT ;
 int LoadStringW (int ,int ,int *,int) ;
 int MB_OK ;
 int MessageBoxW (scalar_t__,int *,int *,int ) ;
 int RGB (int ,int ,int ) ;
 int ReleaseDC (scalar_t__,int ) ;
 int SIMULATED_FONTTYPE ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRUE ;
 int WM_SETFONT ;
 int max (int ,scalar_t__) ;
 int sSpace ;

__attribute__((used)) static inline void choose_font(HWND hwnd)
{
        WCHAR dlg_name[BUFFER_LEN], dlg_info[BUFFER_LEN];
        CHOOSEFONTW chFont;
        LOGFONTW lFont;

        HDC hdc = GetDC(hwnd);

        GetObjectW(Globals.hfont, sizeof(LOGFONTW), &lFont);

        chFont.lStructSize = sizeof(CHOOSEFONTW);
        chFont.hwndOwner = hwnd;
        chFont.hDC = ((void*)0);
        chFont.lpLogFont = &lFont;
        chFont.Flags = CF_SCREENFONTS | CF_FORCEFONTEXIST | CF_LIMITSIZE | CF_NOSCRIPTSEL | CF_INITTOLOGFONTSTRUCT | CF_NOVERTFONTS;
        chFont.rgbColors = RGB(0,0,0);
        chFont.lCustData = 0;
        chFont.lpfnHook = ((void*)0);
        chFont.lpTemplateName = ((void*)0);
        chFont.hInstance = Globals.hInstance;
        chFont.lpszStyle = ((void*)0);
        chFont.nFontType = SIMULATED_FONTTYPE;
        chFont.nSizeMin = 0;
        chFont.nSizeMax = 24;

        if (ChooseFontW(&chFont)) {
                HWND childWnd;
                HFONT hFontOld;

                DeleteObject(Globals.hfont);
                Globals.hfont = CreateFontIndirectW(&lFont);
                hFontOld = SelectObject(hdc, Globals.hfont);
                GetTextExtentPoint32W(hdc, sSpace, 1, &Globals.spaceSize);


                for(childWnd=GetWindow(Globals.hmdiclient,GW_CHILD); childWnd; childWnd=GetNextWindow(childWnd,GW_HWNDNEXT)) {
                        ChildWnd* child = (ChildWnd*) GetWindowLongPtrW(childWnd, GWLP_USERDATA);
                        SendMessageW(child->left.hwnd, WM_SETFONT, (WPARAM)Globals.hfont, TRUE);
                        SendMessageW(child->right.hwnd, WM_SETFONT, (WPARAM)Globals.hfont, TRUE);
                        SendMessageW(child->left.hwnd, LB_SETITEMHEIGHT, 1, max(Globals.spaceSize.cy,IMAGE_HEIGHT+3));
                        SendMessageW(child->right.hwnd, LB_SETITEMHEIGHT, 1, max(Globals.spaceSize.cy,IMAGE_HEIGHT+3));
                        InvalidateRect(child->left.hwnd, ((void*)0), TRUE);
                        InvalidateRect(child->right.hwnd, ((void*)0), TRUE);
                }

                SelectObject(hdc, hFontOld);
        }
        else if (CommDlgExtendedError()) {
                LoadStringW(Globals.hInstance, IDS_FONT_SEL_DLG_NAME, dlg_name, BUFFER_LEN);
                LoadStringW(Globals.hInstance, IDS_FONT_SEL_ERROR, dlg_info, BUFFER_LEN);
                MessageBoxW(hwnd, dlg_info, dlg_name, MB_OK);
        }

        ReleaseDC(hwnd, hdc);
}
