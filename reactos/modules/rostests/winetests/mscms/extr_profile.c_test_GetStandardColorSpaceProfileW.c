
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oldprofile ;
typedef int newprofileA ;
typedef int newprofile ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int CP_ACP ;
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
 int WideCharToMultiByte (int ,int ,int *,int,int *,int,int *,int *) ;
 scalar_t__ broken (int) ;
 int lstrcmpiA (int *,char*) ;
 int * machineW ;
 int ok (int,char*,...) ;
 int pGetStandardColorSpaceProfileW (int *,int,int *,int*) ;
 int pSetStandardColorSpaceProfileW (int *,int,int *) ;
 int skip (char*) ;

__attribute__((used)) static void test_GetStandardColorSpaceProfileW( WCHAR *standardprofileW )
{
    BOOL ret;
    DWORD size;
    WCHAR oldprofile[MAX_PATH];
    WCHAR newprofile[MAX_PATH];
    CHAR newprofileA[MAX_PATH];





    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(machineW, LCS_sRGB, newprofile, &size);
    ok( !ret && GetLastError() == ERROR_NOT_SUPPORTED, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(((void*)0), (DWORD)-1, newprofile, &size);
    ok( !ret && GetLastError() == ERROR_FILE_NOT_FOUND, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(((void*)0), 0, newprofile, &size);
    ok( (!ret && GetLastError() == ERROR_FILE_NOT_FOUND) ||
        broken(ret),
        "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(((void*)0), LCS_sRGB, ((void*)0), &size);
    ok( !ret || broken(ret) , "GetStandardColorSpaceProfileW succeeded\n" );
    ok( GetLastError() == ERROR_INSUFFICIENT_BUFFER ||
        broken(GetLastError() == 0xfaceabee) ,
        "GetStandardColorSpaceProfileW() returns GLE=%u\n", GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(((void*)0), LCS_sRGB, newprofile, ((void*)0));
    ok( !ret && GetLastError() == ERROR_INVALID_PARAMETER, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = 0;
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(((void*)0), LCS_sRGB, newprofile, &size);
    ok( !ret || broken(ret) , "GetStandardColorSpaceProfileW succeeded\n" );
    ok( GetLastError() == ERROR_MORE_DATA ||
        GetLastError() == ERROR_INSUFFICIENT_BUFFER ||
        broken(GetLastError() == 0xfaceabee) ,
        "GetStandardColorSpaceProfileW() returns GLE=%u\n", GetLastError() );



    size = 0;
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(machineW, 0, newprofile, &size);
    ok( !ret && (GetLastError() == ERROR_INVALID_PARAMETER || GetLastError() == ERROR_NOT_SUPPORTED),
        "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, GetLastError() );

    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(((void*)0), 0, newprofile, ((void*)0));
    ok( !ret && GetLastError() == ERROR_INVALID_PARAMETER, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, GetLastError() );

    size = 0;
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(((void*)0), 0, ((void*)0), &size);
    ok( !ret || broken(ret) , "GetStandardColorSpaceProfileW succeeded\n" );
    ok( GetLastError() == ERROR_INSUFFICIENT_BUFFER ||
        GetLastError() == ERROR_FILE_NOT_FOUND ||
        broken(GetLastError() == 0xfaceabee) ,
        "GetStandardColorSpaceProfileW() returns GLE=%u\n", GetLastError() );

    size = sizeof(newprofile);
    SetLastError(0xfaceabee);
    ret = pGetStandardColorSpaceProfileW(((void*)0), 0, newprofile, &size);
    if (!ret) ok( GetLastError() == ERROR_FILE_NOT_FOUND, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, GetLastError() );
    else
    {
        WideCharToMultiByte(CP_ACP, 0, newprofile, -1, newprofileA, sizeof(newprofileA), ((void*)0), ((void*)0));
        ok( !lstrcmpiA( newprofileA, "" ) && GetLastError() == 0xfaceabee,
             "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, GetLastError() );
    }



    size = sizeof(oldprofile);
    ret = pGetStandardColorSpaceProfileW( ((void*)0), LCS_sRGB, oldprofile, &size );
    ok( ret, "GetStandardColorSpaceProfileW() failed (%d)\n", GetLastError() );

    SetLastError(0xdeadbeef);
    ret = pSetStandardColorSpaceProfileW( ((void*)0), LCS_sRGB, standardprofileW );
    if (!ret && (GetLastError() == ERROR_ACCESS_DENIED))
    {
        skip("Not enough rights for SetStandardColorSpaceProfileW\n");
        return;
    }
    ok( ret, "SetStandardColorSpaceProfileW() failed (%d)\n", GetLastError() );

    size = sizeof(newprofile);
    ret = pGetStandardColorSpaceProfileW( ((void*)0), LCS_sRGB, newprofile, &size );
    ok( ret, "GetStandardColorSpaceProfileW() failed (%d)\n", GetLastError() );

    ret = pSetStandardColorSpaceProfileW( ((void*)0), LCS_sRGB, oldprofile );
    ok( ret, "SetStandardColorSpaceProfileW() failed (%d)\n", GetLastError() );
}
