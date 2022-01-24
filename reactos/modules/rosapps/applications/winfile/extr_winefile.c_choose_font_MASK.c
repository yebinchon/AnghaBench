#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_13__ {int /*<<< orphan*/  cy; } ;
struct TYPE_12__ {int /*<<< orphan*/  hInstance; TYPE_6__ spaceSize; scalar_t__ hfont; int /*<<< orphan*/  hmdiclient; } ;
struct TYPE_11__ {int lStructSize; int Flags; int nSizeMax; scalar_t__ nSizeMin; int /*<<< orphan*/  nFontType; int /*<<< orphan*/ * lpszStyle; int /*<<< orphan*/  hInstance; int /*<<< orphan*/ * lpTemplateName; int /*<<< orphan*/ * lpfnHook; scalar_t__ lCustData; int /*<<< orphan*/  rgbColors; int /*<<< orphan*/ * lpLogFont; int /*<<< orphan*/ * hDC; scalar_t__ hwndOwner; } ;
struct TYPE_9__ {int /*<<< orphan*/  hwnd; } ;
struct TYPE_8__ {int /*<<< orphan*/  hwnd; } ;
struct TYPE_10__ {TYPE_2__ right; TYPE_1__ left; } ;
typedef  int /*<<< orphan*/  LOGFONTW ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_3__ ChildWnd ;
typedef  TYPE_4__ CHOOSEFONTW ;

/* Variables and functions */
 int BUFFER_LEN ; 
 int CF_FORCEFONTEXIST ; 
 int CF_INITTOLOGFONTSTRUCT ; 
 int CF_LIMITSIZE ; 
 int CF_NOSCRIPTSEL ; 
 int CF_NOVERTFONTS ; 
 int CF_SCREENFONTS ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_6__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_5__ Globals ; 
 int /*<<< orphan*/  IDS_FONT_SEL_DLG_NAME ; 
 int /*<<< orphan*/  IDS_FONT_SEL_ERROR ; 
 scalar_t__ IMAGE_HEIGHT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_SETITEMHEIGHT ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIMULATED_FONTTYPE ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  sSpace ; 

__attribute__((used)) static inline void FUNC18(HWND hwnd)
{
        WCHAR dlg_name[BUFFER_LEN], dlg_info[BUFFER_LEN];
        CHOOSEFONTW chFont;
        LOGFONTW lFont;

        HDC hdc = FUNC4(hwnd);

        FUNC6(Globals.hfont, sizeof(LOGFONTW), &lFont);

        chFont.lStructSize = sizeof(CHOOSEFONTW);
        chFont.hwndOwner = hwnd;
        chFont.hDC = NULL;
        chFont.lpLogFont = &lFont;
        chFont.Flags = CF_SCREENFONTS | CF_FORCEFONTEXIST | CF_LIMITSIZE | CF_NOSCRIPTSEL | CF_INITTOLOGFONTSTRUCT | CF_NOVERTFONTS;
        chFont.rgbColors = FUNC13(0,0,0);
        chFont.lCustData = 0;
        chFont.lpfnHook = NULL;
        chFont.lpTemplateName = NULL;
        chFont.hInstance = Globals.hInstance;
        chFont.lpszStyle = NULL;
        chFont.nFontType = SIMULATED_FONTTYPE;
        chFont.nSizeMin = 0;
        chFont.nSizeMax = 24;

        if (FUNC0(&chFont)) {
                HWND childWnd;
                HFONT hFontOld;

                FUNC3(Globals.hfont);
                Globals.hfont = FUNC2(&lFont);
                hFontOld = FUNC15(hdc, Globals.hfont);
                FUNC7(hdc, sSpace, 1, &Globals.spaceSize);

                /* change font in all open child windows */
                for(childWnd=FUNC8(Globals.hmdiclient,GW_CHILD); childWnd; childWnd=FUNC5(childWnd,GW_HWNDNEXT)) {
                        ChildWnd* child = (ChildWnd*) FUNC9(childWnd, GWLP_USERDATA);
                        FUNC16(child->left.hwnd, WM_SETFONT, (WPARAM)Globals.hfont, TRUE);
                        FUNC16(child->right.hwnd, WM_SETFONT, (WPARAM)Globals.hfont, TRUE);
                        FUNC16(child->left.hwnd, LB_SETITEMHEIGHT, 1, FUNC17(Globals.spaceSize.cy,IMAGE_HEIGHT+3));
                        FUNC16(child->right.hwnd, LB_SETITEMHEIGHT, 1, FUNC17(Globals.spaceSize.cy,IMAGE_HEIGHT+3));
                        FUNC10(child->left.hwnd, NULL, TRUE);
                        FUNC10(child->right.hwnd, NULL, TRUE);
                }

                FUNC15(hdc, hFontOld);
        }
        else if (FUNC1()) {
                FUNC11(Globals.hInstance, IDS_FONT_SEL_DLG_NAME, dlg_name, BUFFER_LEN);
                FUNC11(Globals.hInstance, IDS_FONT_SEL_ERROR, dlg_info, BUFFER_LEN);
                FUNC12(hwnd, dlg_info, dlg_name, MB_OK);
        }

        FUNC14(hwnd, hdc);
}