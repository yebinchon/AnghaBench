
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oldprofile ;
typedef int newprofile ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int ERROR_ACCESS_DENIED ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_MORE_DATA ;
 int ERROR_NOT_SUPPORTED ;
 int GetLastError () ;
 int LCS_sRGB ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int lstrcmpiA (char*,char*) ;
 int * machine ;
 int ok (int,char*,int,...) ;
 int pGetStandardColorSpaceProfileA (int *,int,char*,int*) ;
 int pSetStandardColorSpaceProfileA (int *,int,char*) ;
 int skip (char*) ;

__attribute__((used)) static void test_GetStandardColorSpaceProfileA( char *standardprofile )
{
    BOOL ret;
    DWORD size;
    CHAR oldprofile[MAX_PATH];
    CHAR newprofile[MAX_PATH];





    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(machine, LCS_sRGB, newprofile, &size);
    ok( !ret && GetLastError() == ERROR_NOT_SUPPORTED, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(((void*)0), (DWORD)-1, newprofile, &size);
    ok( !ret && GetLastError() == ERROR_FILE_NOT_FOUND, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(((void*)0), LCS_sRGB, newprofile, ((void*)0));
    ok( !ret && GetLastError() == ERROR_INVALID_PARAMETER, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(((void*)0), LCS_sRGB, ((void*)0), &size);
    ok( !ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = 0;
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(((void*)0), LCS_sRGB, newprofile, &size);
    ok( !ret && (GetLastError() == ERROR_MORE_DATA || GetLastError() == ERROR_INSUFFICIENT_BUFFER),
        "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );



    size = 0;
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(machine, 0, newprofile, &size);
    ok( !ret && (GetLastError() == ERROR_INVALID_PARAMETER || GetLastError() == ERROR_NOT_SUPPORTED),
        "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );

    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(((void*)0), 0, newprofile, ((void*)0));
    ok( !ret && GetLastError() == ERROR_INVALID_PARAMETER, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = 0;
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(((void*)0), 0, ((void*)0), &size);
    ok( !ret && (GetLastError() == ERROR_INSUFFICIENT_BUFFER || GetLastError() == ERROR_FILE_NOT_FOUND),
        "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileA(((void*)0), 0, newprofile, &size);
    if (!ret) ok( GetLastError() == ERROR_FILE_NOT_FOUND, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );
    else ok( !lstrcmpiA( newprofile, "" ) && GetLastError() == 0xfaceabee,
             "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, GetLastError() );



    size = sizeof(oldprofile);
    ret = pGetStandardColorSpaceProfileA( ((void*)0), LCS_sRGB, oldprofile, &size );
    ok( ret, "GetStandardColorSpaceProfileA() failed (%d)\n", GetLastError() );

    SetLastError(0xdeadbeef);
    ret = pSetStandardColorSpaceProfileA( ((void*)0), LCS_sRGB, standardprofile );
    if (!ret && (GetLastError() == ERROR_ACCESS_DENIED))
    {
        skip("Not enough rights for SetStandardColorSpaceProfileA\n");
        return;
    }
    ok( ret, "SetStandardColorSpaceProfileA() failed (%d)\n", GetLastError() );

    size = sizeof(newprofile);
    ret = pGetStandardColorSpaceProfileA( ((void*)0), LCS_sRGB, newprofile, &size );
    ok( ret, "GetStandardColorSpaceProfileA() failed (%d)\n", GetLastError() );

    ret = pSetStandardColorSpaceProfileA( ((void*)0), LCS_sRGB, oldprofile );
    ok( ret, "SetStandardColorSpaceProfileA() failed (%d)\n", GetLastError() );
}
