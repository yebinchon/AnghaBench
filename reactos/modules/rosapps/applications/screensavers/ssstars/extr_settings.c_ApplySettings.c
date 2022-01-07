
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_2__ {scalar_t__ bSmoothShading; scalar_t__ bEnableFiltering; scalar_t__ bFinePerspective; scalar_t__ bDoBlending; scalar_t__ uiRotation; int uiSpeed; int uiNumStars; } ;
typedef int HWND ;


 int BM_SETCHECK ;
 int CB_SETCURSEL ;
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
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetDlgItemInt (int ,int ,int ,int ) ;
 TYPE_1__ Settings ;
 int TBM_SETPOS ;
 int TRUE ;

__attribute__((used)) static void ApplySettings(HWND hWnd)
{
    SendDlgItemMessage(hWnd, IDC_SLIDER_NUM_OF_STARS, TBM_SETPOS, TRUE, Settings.uiNumStars);
    SetDlgItemInt(hWnd, IDC_TEXT_NUM_OF_STARS, Settings.uiNumStars, FALSE);

    SendDlgItemMessage(hWnd, IDC_SLIDER_SPEED, TBM_SETPOS, TRUE, Settings.uiSpeed);
    SetDlgItemInt(hWnd, IDC_TEXT_SPEED, Settings.uiSpeed, FALSE);

    SendDlgItemMessage(hWnd, IDC_COMBO_ROTATION, CB_SETCURSEL, (WPARAM)Settings.uiRotation, 0);

    SendDlgItemMessage(hWnd, IDC_CHECK_DOBLENDING, BM_SETCHECK, (WPARAM)Settings.bDoBlending, 0);
    SendDlgItemMessage(hWnd, IDC_CHECK_PERSPECTIVE, BM_SETCHECK, (WPARAM)Settings.bFinePerspective, 0);
    SendDlgItemMessage(hWnd, IDC_CHECK_FILTERING, BM_SETCHECK, (WPARAM)Settings.bEnableFiltering, 0);
    SendDlgItemMessage(hWnd, IDC_CHECK_SHADING, BM_SETCHECK, (WPARAM)Settings.bSmoothShading, 0);
}
