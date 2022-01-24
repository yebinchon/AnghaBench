#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int dwMajorVersion; int dwMinorVersion; int wSuiteMask; scalar_t__ wProductType; int /*<<< orphan*/  szCSDVersion; scalar_t__ dwBuildNumber; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__* LPOSVERSIONINFOEX ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ VER_NT_DOMAIN_CONTROLLER ; 
 scalar_t__ VER_NT_SERVER ; 
 scalar_t__ VER_NT_WORKSTATION ; 
 int VER_SUITE_BLADE ; 
 int VER_SUITE_DATACENTER ; 
 int VER_SUITE_EMBEDDEDNT ; 
 int VER_SUITE_ENTERPRISE ; 
 int VER_SUITE_PERSONAL ; 
 int VER_SUITE_SMALLBUSINESS ; 
 int VER_SUITE_SMALLBUSINESS_RESTRICTED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

VOID
FUNC5(LPOSVERSIONINFOEX osvi, TCHAR * HostName, TCHAR * OSName, TCHAR * Version, TCHAR * Role, TCHAR * Components)
{
	/* Host Name - COMPUTERNAME*/
	DWORD  bufCharCount = 1024;
	FUNC0(HostName, &bufCharCount);


	/* OSName - Windows XP Home Editition */
	if(osvi->dwMajorVersion == 4)
	{
		FUNC4(OSName, FUNC1("Microsoft Windows NT 4.0 "));
	}
	else if(osvi->dwMajorVersion == 5)
	{
		if(osvi->dwMinorVersion == 0)
		{
			FUNC4(OSName, FUNC1("Microsoft Windows 2000 "));
		}
		else if(osvi->dwMinorVersion == 1)
		{
			FUNC4(OSName, FUNC1("Microsoft Windows XP "));
		}
		else if(osvi->dwMinorVersion == 2)
		{
			FUNC4(OSName, FUNC1("Microsoft Windows Server 2003 "));
		}
	}
	else if(osvi->dwMajorVersion == 6)
	{
		FUNC4(OSName, FUNC1("Microsoft Windows Vista "));
	}
	else
	{
		FUNC4(OSName, FUNC1("Microsoft Windows "));
	}

	if(osvi->wSuiteMask & VER_SUITE_BLADE)
		FUNC3(OSName, FUNC1("Web Edition"));
	if(osvi->wSuiteMask & VER_SUITE_DATACENTER)
		FUNC3(OSName, FUNC1("Datacenter"));
	if(osvi->wSuiteMask & VER_SUITE_ENTERPRISE)
		FUNC3(OSName, FUNC1("Enterprise"));
	if(osvi->wSuiteMask & VER_SUITE_EMBEDDEDNT)
		FUNC3(OSName, FUNC1("Embedded"));
	if(osvi->wSuiteMask & VER_SUITE_PERSONAL)
		FUNC3(OSName, FUNC1("Home Edition"));
	if(osvi->wSuiteMask & VER_SUITE_SMALLBUSINESS_RESTRICTED && osvi->wSuiteMask & VER_SUITE_SMALLBUSINESS)
		FUNC3(OSName, FUNC1("Small Bussiness Edition"));

	/* Version - 5.1 Build 2600 Serivce Pack 2 */
	FUNC2(Version, FUNC1("%d.%d Build %d %s"),(int)osvi->dwMajorVersion,(int)osvi->dwMinorVersion,(int)osvi->dwBuildNumber, osvi->szCSDVersion);

	/* Role - Workgroup / Server / Domain Controller */
	if(osvi->wProductType == VER_NT_DOMAIN_CONTROLLER)
		FUNC4(Role, FUNC1("Domain Controller"));
	else if(osvi->wProductType == VER_NT_SERVER)
		FUNC4(Role, FUNC1("Server"));
	else if(osvi->wProductType == VER_NT_WORKSTATION)
		FUNC4(Role, FUNC1("Workgroup"));

	/* Components - FIXME: what is something that might be installed? */
	FUNC3(Components, FUNC1("Not Installed"));

}