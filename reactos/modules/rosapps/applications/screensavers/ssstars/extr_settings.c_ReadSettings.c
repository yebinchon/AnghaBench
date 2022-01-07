
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* bSmoothShading; void* bEnableFiltering; void* bFinePerspective; void* bDoBlending; void* uiRotation; void* uiSpeed; void* uiNumStars; } ;
typedef int HWND ;


 int BM_GETCHECK ;
 int CB_GETCURSEL ;
 int FALSE ;
 int IDC_CHECK_DOBLENDING ;
 int IDC_CHECK_FILTERING ;
 int IDC_CHECK_PERSPECTIVE ;
 int IDC_CHECK_SHADING ;
 int IDC_COMBO_ROTATION ;
 int IDC_SLIDER_NUM_OF_STARS ;
 int IDC_SLIDER_SPEED ;
 int IDC_TEXT_NUM_OF_STARS ;
 int IDC_TEXT_SPEED ;
 void* SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetDlgItemInt (int ,int ,void*,int ) ;
 TYPE_1__ Settings ;
 int TBM_GETPOS ;

__attribute__((used)) static void ReadSettings(HWND hWnd)
{
    Settings.uiNumStars = SendDlgItemMessage(hWnd, IDC_SLIDER_NUM_OF_STARS, TBM_GETPOS, 0, 0);
    SetDlgItemInt(hWnd, IDC_TEXT_NUM_OF_STARS, Settings.uiNumStars, FALSE);

    Settings.uiSpeed = SendDlgItemMessage(hWnd, IDC_SLIDER_SPEED, TBM_GETPOS, 0, 0);
    SetDlgItemInt(hWnd, IDC_TEXT_SPEED, Settings.uiSpeed, FALSE);

    Settings.uiRotation = SendDlgItemMessage(hWnd, IDC_COMBO_ROTATION, CB_GETCURSEL, 0, 0);

    Settings.bDoBlending = SendDlgItemMessage(hWnd, IDC_CHECK_DOBLENDING, BM_GETCHECK, 0, 0);
    Settings.bFinePerspective = SendDlgItemMessage(hWnd, IDC_CHECK_PERSPECTIVE, BM_GETCHECK, 0, 0);
    Settings.bEnableFiltering = SendDlgItemMessage(hWnd, IDC_CHECK_FILTERING, BM_GETCHECK, 0, 0);
    Settings.bSmoothShading = SendDlgItemMessage(hWnd, IDC_CHECK_SHADING, BM_GETCHECK, 0, 0);
}
