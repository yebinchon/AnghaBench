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
struct TYPE_2__ {int /*<<< orphan*/  bSmoothShading; int /*<<< orphan*/  bEnableFiltering; int /*<<< orphan*/  bFinePerspective; int /*<<< orphan*/  bDoBlending; int /*<<< orphan*/  uiRotation; int /*<<< orphan*/  uiSpeed; int /*<<< orphan*/  uiNumStars; } ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ Settings ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
    HKEY  hKey;
    LONG  lRes;

    lRes = FUNC1(
            HKEY_CURRENT_USER,
            FUNC3("Software\\Microsoft\\ScreenSavers\\Ssstars"),
            0,
            FUNC3(""),
            0,
            KEY_WRITE,
            NULL,
            &hKey,
            NULL);

    if (lRes != ERROR_SUCCESS)
        return;

    FUNC2(hKey, FUNC3("NumberOfStars"),  Settings.uiNumStars);
    FUNC2(hKey, FUNC3("Speed"),          Settings.uiSpeed);
    FUNC2(hKey, FUNC3("TypeOfRotation"), Settings.uiRotation);

    FUNC2(hKey, FUNC3("DoBlending"),      Settings.bDoBlending);
    FUNC2(hKey, FUNC3("FinePerspective"), Settings.bFinePerspective);
    FUNC2(hKey, FUNC3("EnableFiltering"), Settings.bEnableFiltering);
    FUNC2(hKey, FUNC3("SmoothShading"),   Settings.bSmoothShading);

    FUNC0(hKey);
}