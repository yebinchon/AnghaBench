#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_2__ {scalar_t__ bSmoothShading; scalar_t__ bEnableFiltering; scalar_t__ bFinePerspective; scalar_t__ bDoBlending; scalar_t__ uiRotation; int /*<<< orphan*/  uiSpeed; int /*<<< orphan*/  uiNumStars; } ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETCHECK ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IDC_CHECK_DOBLENDING ; 
 int /*<<< orphan*/  IDC_CHECK_FILTERING ; 
 int /*<<< orphan*/  IDC_CHECK_PERSPECTIVE ; 
 int /*<<< orphan*/  IDC_CHECK_SHADING ; 
 int /*<<< orphan*/  IDC_COMBO_ROTATION ; 
 int /*<<< orphan*/  IDC_SLIDER_NUM_OF_STARS ; 
 int /*<<< orphan*/  IDC_SLIDER_SPEED ; 
 int /*<<< orphan*/  IDC_TEXT_NUM_OF_STARS ; 
 int /*<<< orphan*/  IDC_TEXT_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ Settings ; 
 int /*<<< orphan*/  TBM_SETPOS ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC2(HWND hWnd)
{
    FUNC0(hWnd, IDC_SLIDER_NUM_OF_STARS, TBM_SETPOS, TRUE, Settings.uiNumStars);
    FUNC1(hWnd, IDC_TEXT_NUM_OF_STARS, Settings.uiNumStars, FALSE);

    FUNC0(hWnd, IDC_SLIDER_SPEED, TBM_SETPOS, TRUE, Settings.uiSpeed);
    FUNC1(hWnd, IDC_TEXT_SPEED, Settings.uiSpeed, FALSE);

    FUNC0(hWnd, IDC_COMBO_ROTATION, CB_SETCURSEL, (WPARAM)Settings.uiRotation, 0);

    FUNC0(hWnd, IDC_CHECK_DOBLENDING,  BM_SETCHECK, (WPARAM)Settings.bDoBlending, 0);
    FUNC0(hWnd, IDC_CHECK_PERSPECTIVE, BM_SETCHECK, (WPARAM)Settings.bFinePerspective, 0);
    FUNC0(hWnd, IDC_CHECK_FILTERING,   BM_SETCHECK, (WPARAM)Settings.bEnableFiltering, 0);
    FUNC0(hWnd, IDC_CHECK_SHADING,     BM_SETCHECK, (WPARAM)Settings.bSmoothShading, 0);
}