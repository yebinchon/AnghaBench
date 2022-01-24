#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  startup ;
typedef  int /*<<< orphan*/  flags ;
struct TYPE_7__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_6__ {int cb; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 char* FUNC14 (char const*,char) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16( const char *argv0, DWORD flags )
{
    char keyname[MAX_PATH];
    char buffer[MAX_PATH];
    PROCESS_INFORMATION	info;
    STARTUPINFOA startup;
    BOOL ret;
    DWORD err;
    HKEY hkey;
    const char *basename;

    if ((basename = FUNC14( argv0, '\\' ))) basename++;
    else basename = argv0;

    FUNC11( keyname, "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\%s",
             basename );
    if (!FUNC12( keyname + FUNC13(keyname) - 3, ".so" )) keyname[FUNC13(keyname) - 3] = 0;

    err = FUNC4( HKEY_LOCAL_MACHINE, keyname, &hkey );
    if (err == ERROR_ACCESS_DENIED)
    {
        FUNC10("Not authorized to change the image file execution options\n");
        return;
    }
    FUNC9( !err, "failed to create '%s' error %u\n", keyname, err );
    if (err) return;

    if (flags == 0xdeadbeef)  /* magic value for unsetting it */
        FUNC6( hkey, "GlobalFlag" );
    else
        FUNC7( hkey, "GlobalFlag", 0, REG_DWORD, (BYTE *)&flags, sizeof(flags) );

    FUNC8( &startup, 0, sizeof(startup) );
    startup.cb = sizeof(startup);

    FUNC11( buffer, "%s heap.c 0x%x", argv0, flags );
    ret = FUNC1( NULL, buffer, NULL, NULL, FALSE, 0, NULL, NULL, &startup, &info );
    FUNC9( ret, "failed to create child process error %u\n", FUNC2() );
    if (ret)
    {
        FUNC15( info.hProcess );
        FUNC0( info.hThread );
        FUNC0( info.hProcess );
    }
    FUNC6( hkey, "GlobalFlag" );
    FUNC3( hkey );
    FUNC5( HKEY_LOCAL_MACHINE, keyname );
}