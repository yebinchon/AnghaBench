
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * HDC ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetICMProfileW (int *,scalar_t__*,int *) ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetICMProfileW( HDC dc )
{
    BOOL ret;
    DWORD size, error;
    WCHAR filename[MAX_PATH];

    SetLastError( 0xdeadbeef );
    ret = GetICMProfileW( ((void*)0), ((void*)0), ((void*)0) );
    if ( !ret && ( GetLastError() == ERROR_CALL_NOT_IMPLEMENTED ) )
    {
        win_skip( "GetICMProfileW is not implemented\n" );
        return;
    }
    ok( !ret, "GetICMProfileW succeeded\n" );

    ret = GetICMProfileW( dc, ((void*)0), ((void*)0) );
    ok( !ret, "GetICMProfileW succeeded\n" );

    if (0)
    {

        size = MAX_PATH;
        ret = GetICMProfileW( dc, &size, ((void*)0) );
        ok( ret, "GetICMProfileW failed %d\n", GetLastError() );
    }

    ret = GetICMProfileW( dc, ((void*)0), filename );
    ok( !ret, "GetICMProfileW succeeded\n" );

    size = MAX_PATH;
    ret = GetICMProfileW( ((void*)0), &size, filename );
    ok( !ret, "GetICMProfileW succeeded\n" );

    size = 0;
    ret = GetICMProfileW( dc, &size, ((void*)0) );
    ok( !ret, "GetICMProfileW succeeded\n" );
    ok( size > 0, "got %u\n", size );

    size = 0;
    SetLastError(0xdeadbeef);
    ret = GetICMProfileW( dc, &size, filename );
    error = GetLastError();
    ok( !ret, "GetICMProfileW succeeded\n" );
    ok( size, "expected size > 0\n" );
    ok( error == ERROR_INSUFFICIENT_BUFFER, "got %d, expected ERROR_INSUFFICIENT_BUFFER\n", error );

    size = MAX_PATH;
    ret = GetICMProfileW( dc, &size, filename );
    ok( ret, "GetICMProfileW failed %d\n", GetLastError() );
}
