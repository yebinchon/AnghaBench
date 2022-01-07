
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int hPicPrev; void* BlueVal; void* GreenVal; void* RedVal; int hPreviewBitmap; int hBitmap; } ;
typedef TYPE_1__* PIMAGEADJUST ;
typedef int HWND ;
typedef int HDC ;
typedef void* DWORD ;


 int AdjustContrast (int ,int ,int ,int ,void*,void*,void*) ;
 void* BASECOLOUR ;
 scalar_t__ BST_CHECKED ;
 int FALSE ;
 int GetDC (int ) ;
 int IDC_BRI_BLUE ;
 int IDC_BRI_EDIT ;
 int IDC_BRI_FULL ;
 int IDC_BRI_GREEN ;
 int IDC_BRI_RED ;
 int IDC_BRI_TRACKBAR ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetDlgItemInt (int ,int ,void*,int ) ;
 int TBM_GETPOS ;

__attribute__((used)) static VOID
Cont_OnTrackBar(PIMAGEADJUST pImgAdj,
           HWND hDlg)
{
    HDC hdcMem;
    DWORD TrackPos;

    TrackPos = (DWORD)SendDlgItemMessage(hDlg,
                                         IDC_BRI_TRACKBAR,
                                         TBM_GETPOS,
                                         0,
                                         0);

    SetDlgItemInt(hDlg,
                  IDC_BRI_EDIT,
                  TrackPos,
                  FALSE);

    if (IsDlgButtonChecked(hDlg, IDC_BRI_FULL) == BST_CHECKED)
    {
        pImgAdj->RedVal = pImgAdj->GreenVal = pImgAdj->BlueVal = TrackPos - BASECOLOUR + 100;
    }
    else if (IsDlgButtonChecked(hDlg, IDC_BRI_RED) == BST_CHECKED)
    {
        pImgAdj->RedVal = TrackPos - BASECOLOUR + 100;
    }
    else if (IsDlgButtonChecked(hDlg, IDC_BRI_GREEN) == BST_CHECKED)
    {
        pImgAdj->GreenVal = TrackPos - BASECOLOUR + 100;
    }
    else if (IsDlgButtonChecked(hDlg, IDC_BRI_BLUE) == BST_CHECKED)
    {
        pImgAdj->BlueVal = TrackPos - BASECOLOUR + 100;
    }

    hdcMem = GetDC(pImgAdj->hPicPrev);

    AdjustContrast(pImgAdj->hBitmap,
                     pImgAdj->hPreviewBitmap,
                     pImgAdj->hPicPrev,
                     hdcMem,
                     pImgAdj->RedVal,
                     pImgAdj->GreenVal,
                     pImgAdj->BlueVal);

    ReleaseDC(pImgAdj->hPicPrev, hdcMem);
}
