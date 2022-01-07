
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int * LPCWSTR ;
typedef int * LPCSTR ;
typedef int INFCONTEXT ;
typedef int * HINF ;
typedef scalar_t__ BOOL ;


 int * ERROR_CALL_NOT_IMPLEMENTED ;
 int * ERROR_INVALID_PARAMETER ;
 scalar_t__ FALSE ;
 int * GetLastError () ;
 int SetLastError (int) ;
 int SetupCloseInfFile (int *) ;
 scalar_t__ SetupFindFirstLineA (int *,char*,int *,int *) ;
 scalar_t__ TRUE ;
 int contents ;
 int * getfield_resA ;
 int ** getfield_resW ;
 int lstrcmpA (int ,int *) ;
 int lstrcmpW (int *,int *) ;
 int lstrlenA (int *) ;
 int lstrlenW (int *) ;
 int ok (int,char*,...) ;
 int * pSetupGetFieldA (int *,int) ;
 int * pSetupGetFieldW (int *,int) ;
 int * test_file_contents (int ,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_pSetupGetField(void)
{
    UINT err;
    BOOL ret;
    HINF hinf;
    LPCSTR fieldA;
    LPCWSTR fieldW;
    INFCONTEXT context;
    int i;
    int len;
    BOOL unicode = TRUE;

    SetLastError(0xdeadbeef);
    lstrcmpW(((void*)0), ((void*)0));
    if (GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("Using A-functions instead of W\n");
        unicode = FALSE;
    }

    hinf = test_file_contents( contents, &err );
    ok( hinf != ((void*)0), "Expected valid INF file\n" );

    ret = SetupFindFirstLineA( hinf, "FileBranchInfo", ((void*)0), &context );
    ok( ret, "Failed to find first line\n" );



    for ( i = 0; i < 3; i++ )
    {
        if (unicode)
        {
            fieldW = pSetupGetFieldW( &context, i );
            ok( fieldW != ((void*)0), "Failed to get field %i\n", i );
            ok( !lstrcmpW( getfield_resW[i], fieldW ), "Wrong string returned\n" );
        }
        else
        {
            fieldA = pSetupGetFieldA( &context, i );
            ok( fieldA != ((void*)0), "Failed to get field %i\n", i );
            ok( !lstrcmpA( getfield_resA[i], fieldA ), "Wrong string returned\n" );
        }
    }

    if (unicode)
    {
        fieldW = pSetupGetFieldW( &context, 3 );
        ok( fieldW != ((void*)0), "Failed to get field 3\n" );
        len = lstrlenW( fieldW );
        ok( len == 511 ||
            len == 4096,
            "Unexpected length, got %d\n", len );

        fieldW = pSetupGetFieldW( &context, 4 );
        ok( fieldW == ((void*)0), "Expected NULL, got %p\n", fieldW );
        ok( GetLastError() == ERROR_INVALID_PARAMETER,
            "Expected ERROR_INVALID_PARAMETER, got %u\n", GetLastError() );
    }
    else
    {
        fieldA = pSetupGetFieldA( &context, 3 );
        ok( fieldA != ((void*)0), "Failed to get field 3\n" );
        len = lstrlenA( fieldA );
        ok( len == 511,
            "Unexpected length, got %d\n", len );

        fieldA = pSetupGetFieldA( &context, 4 );
        ok( fieldA == ((void*)0), "Expected NULL, got %p\n", fieldA );
        ok( GetLastError() == ERROR_INVALID_PARAMETER,
            "Expected ERROR_INVALID_PARAMETER, got %u\n", GetLastError() );
    }

    SetupCloseInfFile( hinf );
}
