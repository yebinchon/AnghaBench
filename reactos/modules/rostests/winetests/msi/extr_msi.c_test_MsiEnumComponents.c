
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int REGSAM ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;
typedef char BOOL ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 char FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 int LocalFree (char*) ;
 int MAX_PATH ;
 scalar_t__ MsiEnumComponentsA (scalar_t__,char*) ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExA (int ,char*,int ,int *,int ,int ,int *,int **,int *) ;
 char TRUE ;
 int create_test_guid (char*,char*) ;
 int delete_key (int *,char*,int ) ;
 char* get_user_sid () ;
 scalar_t__ is_wow64 ;
 int ok (char,char*,...) ;
 int skip (char*) ;
 int strcat (char*,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_MsiEnumComponents(void)
{
    UINT r;
    BOOL found1, found2;
    DWORD index;
    char comp1[39], comp2[39], guid[39];
    char comp_squashed1[33], comp_squashed2[33];
    char keypath1[MAX_PATH], keypath2[MAX_PATH];
    REGSAM access = KEY_ALL_ACCESS;
    char *usersid = get_user_sid();
    HKEY key1 = ((void*)0), key2 = ((void*)0);

    create_test_guid( comp1, comp_squashed1 );
    create_test_guid( comp2, comp_squashed2 );

    if (is_wow64) access |= KEY_WOW64_64KEY;

    strcpy( keypath1, "Software\\Microsoft\\Windows\\CurrentVersion\\Installer\\UserData\\" );
    strcat( keypath1, "S-1-5-18\\Components\\" );
    strcat( keypath1, comp_squashed1 );

    r = RegCreateKeyExA( HKEY_LOCAL_MACHINE, keypath1, 0, ((void*)0), 0, access, ((void*)0), &key1, ((void*)0) );
    if (r == ERROR_ACCESS_DENIED)
    {
        skip( "insufficient rights\n" );
        goto done;
    }
    ok( r == ERROR_SUCCESS, "got %u\n", r );

    strcpy( keypath2, "Software\\Microsoft\\Windows\\CurrentVersion\\Installer\\UserData\\" );
    strcat( keypath2, usersid );
    strcat( keypath2, "\\Components\\" );
    strcat( keypath2, comp_squashed2 );

    r = RegCreateKeyExA( HKEY_LOCAL_MACHINE, keypath2, 0, ((void*)0), 0, access, ((void*)0), &key2, ((void*)0) );
    if (r == ERROR_ACCESS_DENIED)
    {
        skip( "insufficient rights\n" );
        goto done;
    }

    r = MsiEnumComponentsA( 0, ((void*)0) );
    ok( r == ERROR_INVALID_PARAMETER, "got %u\n", r );

    index = 0;
    guid[0] = 0;
    found1 = found2 = FALSE;
    while (!MsiEnumComponentsA( index, guid ))
    {
        if (!strcmp( guid, comp1 )) found1 = TRUE;
        if (!strcmp( guid, comp2 )) found2 = TRUE;
        ok( guid[0], "empty guid\n" );
        guid[0] = 0;
        index++;
    }
    ok( found1, "comp1 not found\n" );
    ok( found2, "comp2 not found\n" );

done:
    delete_key( key1, "", access );
    delete_key( key2, "", access );
    RegCloseKey( key1 );
    RegCloseKey( key2 );
    LocalFree( usersid );
}
