
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int startup ;
typedef int flags ;
struct TYPE_7__ {int hProcess; int hThread; } ;
struct TYPE_6__ {int cb; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int FALSE ;
 int GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char*,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 int RegDeleteValueA (int ,char*) ;
 int RegSetValueExA (int ,char*,int ,int ,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,char*,...) ;
 int skip (char*) ;
 int sprintf (char*,char*,char const*,...) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char const*,char) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void test_debug_heap( const char *argv0, DWORD flags )
{
    char keyname[MAX_PATH];
    char buffer[MAX_PATH];
    PROCESS_INFORMATION info;
    STARTUPINFOA startup;
    BOOL ret;
    DWORD err;
    HKEY hkey;
    const char *basename;

    if ((basename = strrchr( argv0, '\\' ))) basename++;
    else basename = argv0;

    sprintf( keyname, "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\%s",
             basename );
    if (!strcmp( keyname + strlen(keyname) - 3, ".so" )) keyname[strlen(keyname) - 3] = 0;

    err = RegCreateKeyA( HKEY_LOCAL_MACHINE, keyname, &hkey );
    if (err == ERROR_ACCESS_DENIED)
    {
        skip("Not authorized to change the image file execution options\n");
        return;
    }
    ok( !err, "failed to create '%s' error %u\n", keyname, err );
    if (err) return;

    if (flags == 0xdeadbeef)
        RegDeleteValueA( hkey, "GlobalFlag" );
    else
        RegSetValueExA( hkey, "GlobalFlag", 0, REG_DWORD, (BYTE *)&flags, sizeof(flags) );

    memset( &startup, 0, sizeof(startup) );
    startup.cb = sizeof(startup);

    sprintf( buffer, "%s heap.c 0x%x", argv0, flags );
    ret = CreateProcessA( ((void*)0), buffer, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &startup, &info );
    ok( ret, "failed to create child process error %u\n", GetLastError() );
    if (ret)
    {
        winetest_wait_child_process( info.hProcess );
        CloseHandle( info.hThread );
        CloseHandle( info.hProcess );
    }
    RegDeleteValueA( hkey, "GlobalFlag" );
    RegCloseKey( hkey );
    RegDeleteKeyA( HKEY_LOCAL_MACHINE, keyname );
}
