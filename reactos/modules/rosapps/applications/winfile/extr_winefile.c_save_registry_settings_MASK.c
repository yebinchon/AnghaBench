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
typedef  int /*<<< orphan*/  logfont ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_6__ {int cbSize; TYPE_1__ rcWindow; } ;
typedef  TYPE_2__ WINDOWINFO ;
struct TYPE_7__ {int /*<<< orphan*/  hfont; int /*<<< orphan*/  hMainWnd; } ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LOGFONTW ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__ Globals ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reg_height ; 
 int /*<<< orphan*/  reg_logfont ; 
 int /*<<< orphan*/  reg_start_x ; 
 int /*<<< orphan*/  reg_start_y ; 
 int /*<<< orphan*/  reg_width ; 
 int /*<<< orphan*/  registry_key ; 

__attribute__((used)) static void FUNC6(void)
{
	WINDOWINFO wi;
	HKEY hKey;
	INT width, height;
	LOGFONTW logfont;

	wi.cbSize = sizeof( WINDOWINFO );
	FUNC1(Globals.hMainWnd, &wi);
	width = wi.rcWindow.right - wi.rcWindow.left;
	height = wi.rcWindow.bottom - wi.rcWindow.top;

	if ( FUNC4( HKEY_CURRENT_USER, registry_key,
                            0, KEY_SET_VALUE, &hKey ) != ERROR_SUCCESS )
	{
		/* Unable to save registry settings - try to create key */
                if ( FUNC3( HKEY_CURRENT_USER, registry_key,
                                      0, NULL, REG_OPTION_NON_VOLATILE,
                                      KEY_SET_VALUE, NULL, &hKey, NULL ) != ERROR_SUCCESS )
		{
			/* FIXME: Cannot create key */
			return;
		}
	}
	/* Save all of the settings */
        FUNC5( hKey, reg_start_x, 0, REG_DWORD,
                        (LPBYTE) &wi.rcWindow.left, sizeof(DWORD) );
        FUNC5( hKey, reg_start_y, 0, REG_DWORD,
                        (LPBYTE) &wi.rcWindow.top, sizeof(DWORD) );
        FUNC5( hKey, reg_width, 0, REG_DWORD,
                        (LPBYTE) &width, sizeof(DWORD) );
        FUNC5( hKey, reg_height, 0, REG_DWORD,
                        (LPBYTE) &height, sizeof(DWORD) );
        FUNC0(Globals.hfont, sizeof(logfont), &logfont);
        FUNC5( hKey, reg_logfont, 0, REG_BINARY,
                        (LPBYTE)&logfont, sizeof(LOGFONTW) );

	/* TODO: Save more settings here (List vs. Detailed View, etc.) */
	FUNC2( hKey );
}