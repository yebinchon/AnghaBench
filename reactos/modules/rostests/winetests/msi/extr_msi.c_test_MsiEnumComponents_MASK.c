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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  REGSAM ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;
typedef  char BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 char FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 () ; 
 scalar_t__ is_wow64 ; 
 int /*<<< orphan*/  FUNC7 (char,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    UINT r;
    BOOL found1, found2;
    DWORD index;
    char comp1[39], comp2[39], guid[39];
    char comp_squashed1[33], comp_squashed2[33];
    char keypath1[MAX_PATH], keypath2[MAX_PATH];
    REGSAM access = KEY_ALL_ACCESS;
    char *usersid = FUNC6();
    HKEY key1 = NULL, key2 = NULL;

    FUNC4( comp1, comp_squashed1 );
    FUNC4( comp2, comp_squashed2 );

    if (is_wow64) access |= KEY_WOW64_64KEY;

    FUNC11( keypath1, "Software\\Microsoft\\Windows\\CurrentVersion\\Installer\\UserData\\" );
    FUNC9( keypath1, "S-1-5-18\\Components\\" );
    FUNC9( keypath1, comp_squashed1 );

    r = FUNC3( HKEY_LOCAL_MACHINE, keypath1, 0, NULL, 0, access, NULL, &key1, NULL );
    if (r == ERROR_ACCESS_DENIED)
    {
        FUNC8( "insufficient rights\n" );
        goto done;
    }
    FUNC7( r == ERROR_SUCCESS, "got %u\n", r );

    FUNC11( keypath2, "Software\\Microsoft\\Windows\\CurrentVersion\\Installer\\UserData\\" );
    FUNC9( keypath2, usersid );
    FUNC9( keypath2, "\\Components\\" );
    FUNC9( keypath2, comp_squashed2 );

    r = FUNC3( HKEY_LOCAL_MACHINE, keypath2, 0, NULL, 0, access, NULL, &key2, NULL );
    if (r == ERROR_ACCESS_DENIED)
    {
        FUNC8( "insufficient rights\n" );
        goto done;
    }

    r = FUNC1( 0, NULL );
    FUNC7( r == ERROR_INVALID_PARAMETER, "got %u\n", r );

    index = 0;
    guid[0] = 0;
    found1 = found2 = FALSE;
    while (!FUNC1( index, guid ))
    {
        if (!FUNC10( guid, comp1 )) found1 = TRUE;
        if (!FUNC10( guid, comp2 )) found2 = TRUE;
        FUNC7( guid[0], "empty guid\n" );
        guid[0] = 0;
        index++;
    }
    FUNC7( found1, "comp1 not found\n" );
    FUNC7( found2, "comp2 not found\n" );

done:
    FUNC5( key1, "", access );
    FUNC5( key2, "", access );
    FUNC2( key1 );
    FUNC2( key2 );
    FUNC0( usersid );
}