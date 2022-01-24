#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* height; void* width; void* start_y; void* start_x; } ;
typedef  TYPE_1__ windowOptions ;
typedef  int /*<<< orphan*/  logfont ;
struct TYPE_5__ {int /*<<< orphan*/  hfont; } ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LOGFONTW ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 void* CW_USEDEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEFAULT_GUI_FONT ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ Globals ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  reg_height ; 
 int /*<<< orphan*/  reg_logfont ; 
 int /*<<< orphan*/  reg_start_x ; 
 int /*<<< orphan*/  reg_start_y ; 
 int /*<<< orphan*/  reg_width ; 
 int /*<<< orphan*/  registry_key ; 

__attribute__((used)) static windowOptions FUNC6(void)
{
	DWORD size;
	DWORD type;
	HKEY hKey;
	windowOptions opts;
	LOGFONTW logfont;

        FUNC4( HKEY_CURRENT_USER, registry_key,
                       0, KEY_QUERY_VALUE, &hKey );

	size = sizeof(DWORD);

        if( FUNC5( hKey, reg_start_x, NULL, &type,
                              (LPBYTE) &opts.start_x, &size ) != ERROR_SUCCESS )
		opts.start_x = CW_USEDEFAULT;

        if( FUNC5( hKey, reg_start_y, NULL, &type,
                              (LPBYTE) &opts.start_y, &size ) != ERROR_SUCCESS )
		opts.start_y = CW_USEDEFAULT;

        if( FUNC5( hKey, reg_width, NULL, &type,
                              (LPBYTE) &opts.width, &size ) != ERROR_SUCCESS )
		opts.width = CW_USEDEFAULT;

        if( FUNC5( hKey, reg_height, NULL, &type,
                              (LPBYTE) &opts.height, &size ) != ERROR_SUCCESS )
		opts.height = CW_USEDEFAULT;
	size=sizeof(logfont);
	if( FUNC5( hKey, reg_logfont, NULL, &type,
                              (LPBYTE) &logfont, &size ) != ERROR_SUCCESS )
		FUNC1(FUNC2(DEFAULT_GUI_FONT),sizeof(logfont),&logfont);

	FUNC3( hKey );

	Globals.hfont = FUNC0(&logfont);
	return opts;
}