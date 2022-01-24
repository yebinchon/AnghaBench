#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  (* PWDCHANGEPASSWORD ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HINSTANCE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

BOOL FUNC4(HWND hwnd)
{
	// This only ever gets called under '95, when started with the /a option.
	HINSTANCE hmpr = FUNC2(FUNC3("MPR.DLL"));
	PWDCHANGEPASSWORD PwdChangePassword;

	if(hmpr == NULL)
		return FALSE;

	PwdChangePassword = (PWDCHANGEPASSWORD)FUNC1(hmpr, "PwdChangePasswordA");

	if(PwdChangePassword == NULL)
	{
		FUNC0(hmpr);
		return FALSE;
	}

	PwdChangePassword(FUNC3("SCRSAVE"), hwnd, 0, 0);
	FUNC0(hmpr);

	return TRUE;
}