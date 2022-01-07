
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int lf ;
typedef size_t UINT ;
struct TYPE_10__ {size_t bmHeight; } ;
struct TYPE_9__ {int lfHeight; int lfFaceName; int lfQuality; int lfCharSet; int lfWeight; } ;
struct TYPE_8__ {size_t cy; } ;
typedef int TCHAR ;
typedef int Strings ;
typedef TYPE_1__ SIZE ;
typedef int LPARAM ;
typedef TYPE_2__ LOGFONT ;
typedef int HWND ;
typedef scalar_t__ HINSTANCE ;
typedef scalar_t__ HGDIOBJ ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef TYPE_3__ BITMAP ;


 int ANSI_CHARSET ;
 int CB_ADDSTRING ;
 int CreateCompatibleDC (int ) ;
 scalar_t__ CreateFontIndirect (TYPE_2__*) ;
 int DeleteDC (int ) ;
 int DeleteObject (scalar_t__) ;
 int FALSE ;
 int FW_THIN ;
 int GWLP_HINSTANCE ;
 int GetDC (int ) ;
 int GetObject (scalar_t__,int,TYPE_3__*) ;
 int GetTextExtentPoint32 (int ,int *,size_t,TYPE_1__*) ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 int IDB_COSMOS ;
 int IDC_COMBO_ROTATION ;
 int IDC_IMAGE_COSMOS ;
 int IDC_SLIDER_NUM_OF_STARS ;
 int IDC_SLIDER_SPEED ;
 int IDS_DESCRIPTION ;
 int IMAGE_BITMAP ;
 int LR_CREATEDIBSECTION ;
 int LR_DEFAULTSIZE ;
 scalar_t__ LoadImage (scalar_t__,int ,int ,int ,int ,int) ;
 size_t LoadString (scalar_t__,int ,int *,int) ;
 int MAKEINTRESOURCE (int ) ;
 int MAKELPARAM (int,int) ;
 int MAX_STARS ;
 int MIN_STARS ;
 int PROOF_QUALITY ;
 int RGB (int,int,int) ;
 size_t ROTATION_ITEMS ;
 int ReleaseDC (int ,int ) ;
 int * RotoStrings ;
 int STM_SETIMAGE ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TBM_SETRANGE ;
 int TRANSPARENT ;
 int TextOut (int ,int,size_t,int *,size_t) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int * _T (char*) ;
 int _tcscpy (int ,int *) ;

__attribute__((used)) static void SetupControls(HWND hWnd)
{
    TCHAR Strings[256];
    HINSTANCE hInstance;
    UINT x, gap;
    LOGFONT lf;
    HFONT hFont;
    HBITMAP hCosmos;
    HDC hDC, hMemDC;
    HGDIOBJ hOldBmp, hOldFnt;
    SIZE sizeReactOS;
    SIZE sizeStarfield;
    BITMAP bm;

    hInstance = (HINSTANCE)GetWindowLongPtr(hWnd, GWLP_HINSTANCE);

    SendDlgItemMessage(hWnd, IDC_SLIDER_NUM_OF_STARS, TBM_SETRANGE, FALSE, MAKELPARAM(MIN_STARS, MAX_STARS));

    SendDlgItemMessage(hWnd, IDC_SLIDER_SPEED, TBM_SETRANGE, FALSE, MAKELPARAM(1, 100));

    for (x = 0; x < ROTATION_ITEMS; x++)
    {
        LoadString(hInstance, RotoStrings[x], Strings, sizeof(Strings)/sizeof(TCHAR));
        SendDlgItemMessage(hWnd, IDC_COMBO_ROTATION, CB_ADDSTRING, 0, (LPARAM)Strings);
    }

    hCosmos = LoadImage(hInstance, MAKEINTRESOURCE(IDB_COSMOS), IMAGE_BITMAP, 0, 0, LR_CREATEDIBSECTION | LR_DEFAULTSIZE);

    hDC = GetDC(hWnd);
    hMemDC = CreateCompatibleDC(hDC);


    ZeroMemory(&lf, sizeof(lf));

    lf.lfWeight = FW_THIN;
    lf.lfCharSet = ANSI_CHARSET;
    lf.lfQuality = PROOF_QUALITY;
    lf.lfHeight = 36;
    _tcscpy(lf.lfFaceName, _T("Tahoma"));

    hFont = CreateFontIndirect(&lf);

    hOldBmp = SelectObject(hMemDC, hCosmos);
    hOldFnt = SelectObject(hMemDC, hFont);

    SetBkMode(hMemDC, TRANSPARENT);
    SetTextColor(hMemDC, RGB(0xFF, 0xFF, 0xFF));

    x = LoadString(hInstance, IDS_DESCRIPTION, Strings, sizeof(Strings)/sizeof(TCHAR));

    GetTextExtentPoint32(hMemDC, _T("ReactOS"), 7, &sizeReactOS);
    GetTextExtentPoint32(hMemDC, Strings, x, &sizeStarfield);

    GetObject(hCosmos, sizeof(BITMAP), &bm);

    gap = bm.bmHeight - sizeReactOS.cy - sizeStarfield.cy;

    TextOut(hMemDC, 16, gap * 2 / 5, _T("ReactOS"), 7);
    TextOut(hMemDC, 16, gap * 3 / 5 + sizeReactOS.cy, Strings, x);

    SelectObject(hMemDC, hOldBmp);
    SelectObject(hMemDC, hOldFnt);

    DeleteObject(hFont);

    DeleteDC(hMemDC);
    ReleaseDC(hWnd, hDC);

    SendDlgItemMessage(hWnd, IDC_IMAGE_COSMOS, STM_SETIMAGE, IMAGE_BITMAP, (LPARAM)hCosmos);
}
