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
typedef  int /*<<< orphan*/  (* VERIFYSCREENSAVEPWD ) (int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HINSTANCE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

BOOL FUNC5(HWND hwnd)
{
	// Under NT, we return TRUE immediately. This lets the saver quit,
	// and the system manages passwords. Under '95, we call VerifyScreenSavePwd.
	// This checks the appropriate registry key and, if necessary,
	// pops up a verify dialog

	HINSTANCE			hpwdcpl;
	VERIFYSCREENSAVEPWD VerifyScreenSavePwd;
	BOOL				fResult;

	if(FUNC2() < 0x80000000)
		return TRUE;

	hpwdcpl = FUNC3(FUNC4("PASSWORD.CPL"));

	if(hpwdcpl == NULL)
	{
		return FALSE;
	}


	VerifyScreenSavePwd = (VERIFYSCREENSAVEPWD)FUNC1(hpwdcpl, "VerifyScreenSavePwd");

	if(VerifyScreenSavePwd == NULL)
	{
		FUNC0(hpwdcpl);
		return FALSE;
	}

	fResult = VerifyScreenSavePwd(hwnd);
	FUNC0(hpwdcpl);

	return fResult;
}