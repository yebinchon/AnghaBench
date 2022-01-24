#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_6__ {int length; int flags; TYPE_1__ rcNormalPosition; } ;
typedef  TYPE_2__ WINDOWPLACEMENT ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int Maximized; int /*<<< orphan*/  Bottom; int /*<<< orphan*/  Right; int /*<<< orphan*/  Top; int /*<<< orphan*/  Left; } ;
typedef  int /*<<< orphan*/  SHIMGVW_SETTINGS ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WPF_RESTORETOMAXIMIZED ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_3__ shiSettings ; 

__attribute__((used)) static VOID
FUNC7(HWND hwnd)
{
    WINDOWPLACEMENT wp;
    HKEY hKey;

    FUNC5(hwnd, SW_HIDE);
    wp.length = sizeof(WINDOWPLACEMENT);
    FUNC0(hwnd, &wp);

    shiSettings.Left = wp.rcNormalPosition.left;
    shiSettings.Top  = wp.rcNormalPosition.top;
    shiSettings.Right  = wp.rcNormalPosition.right;
    shiSettings.Bottom = wp.rcNormalPosition.bottom;
    shiSettings.Maximized = (FUNC1(hwnd) || (wp.flags & WPF_RESTORETOMAXIMIZED));

    if (FUNC3(HKEY_CURRENT_USER, FUNC6("Software\\ReactOS\\shimgvw"), 0, NULL,
        REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &hKey, NULL) == ERROR_SUCCESS)
    {
        FUNC4(hKey, FUNC6("Settings"), 0, REG_BINARY, (LPBYTE)&shiSettings, sizeof(SHIMGVW_SETTINGS));
        FUNC2(hKey);
    }
}