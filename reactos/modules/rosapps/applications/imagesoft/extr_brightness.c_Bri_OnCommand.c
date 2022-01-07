
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {TYPE_2__* Info; int BlueVal; int GreenVal; int RedVal; } ;
struct TYPE_6__ {TYPE_1__* ImageEditors; } ;
struct TYPE_5__ {int hSelf; int hBitmap; } ;
typedef TYPE_3__* PIMAGEADJUST ;
typedef int HWND ;
typedef int HDC ;
typedef int BOOL ;


 int AdjustBrightness (int ,int ,int ,int ,int ,int ,int ) ;
 int EndDialog (int ,int) ;
 int FALSE ;
 int GetDC (int ) ;


 int ReleaseDC (int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL
Bri_OnCommand(PIMAGEADJUST pImgAdj,
          HWND hDlg,
          UINT uID)
{
    switch (uID)
    {
        case 128:
        {
            HDC hdcMem;

            hdcMem = GetDC(pImgAdj->Info->ImageEditors->hSelf);

            AdjustBrightness(pImgAdj->Info->ImageEditors->hBitmap,
                             pImgAdj->Info->ImageEditors->hBitmap,
                             pImgAdj->Info->ImageEditors->hSelf,
                             hdcMem,
                             pImgAdj->RedVal,
                             pImgAdj->GreenVal,
                             pImgAdj->BlueVal);

            ReleaseDC(pImgAdj->Info->ImageEditors->hSelf,
                      hdcMem);

            EndDialog(hDlg,
                      uID);

            return TRUE;
        }

        case 129:
        {
            EndDialog(hDlg,
                      uID);
            return TRUE;
        }
    }

    return FALSE;
}
