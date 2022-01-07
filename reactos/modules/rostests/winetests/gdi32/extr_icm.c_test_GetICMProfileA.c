
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetICMProfileA (int *,scalar_t__*,char*) ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int trace (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetICMProfileA( HDC dc )
{
    BOOL ret;
    DWORD size, error;
    char filename[MAX_PATH];

    SetLastError( 0xdeadbeef );
    ret = GetICMProfileA( ((void*)0), ((void*)0), ((void*)0) );
    if ( !ret && ( GetLastError() == ERROR_CALL_NOT_IMPLEMENTED ) )
    {
        win_skip( "GetICMProfileA is not implemented\n" );
        return;
    }
    ok( !ret, "GetICMProfileA succeeded\n" );

    ret = GetICMProfileA( dc, ((void*)0), ((void*)0) );
    ok( !ret, "GetICMProfileA succeeded\n" );

    size = MAX_PATH;
    ret = GetICMProfileA( dc, &size, ((void*)0) );
    ok( !ret, "GetICMProfileA succeeded\n" );
    ok( size > 0, "got %u\n", size );

    size = 0;
    ret = GetICMProfileA( dc, &size, ((void*)0) );
    ok( !ret, "GetICMProfileA succeeded\n" );
    ok( size > 0, "got %u\n", size );

    size = MAX_PATH;
    ret = GetICMProfileA( ((void*)0), &size, filename );
    ok( !ret, "GetICMProfileA succeeded\n" );

    size = 0;
    filename[0] = 0;
    SetLastError(0xdeadbeef);
    ret = GetICMProfileA( dc, &size, filename );
    error = GetLastError();
    ok( !ret, "GetICMProfileA succeeded\n" );
    ok( size, "expected size > 0\n" );
    ok( filename[0] == 0, "Expected filename to be empty\n" );
    ok( error == ERROR_INSUFFICIENT_BUFFER, "got %d, expected ERROR_INSUFFICIENT_BUFFER\n", error );

    ret = GetICMProfileA( dc, ((void*)0), filename );
    ok( !ret, "GetICMProfileA succeeded\n" );

    size = MAX_PATH;
    ret = GetICMProfileA( dc, &size, filename );
    ok( ret, "GetICMProfileA failed %d\n", GetLastError() );

    trace( "%s\n", filename );
}
