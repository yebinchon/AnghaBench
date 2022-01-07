
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ HRSRC ;


 scalar_t__ ERROR_RESOURCE_LANG_NOT_FOUND ;
 scalar_t__ ERROR_RESOURCE_NAME_NOT_FOUND ;
 scalar_t__ ERROR_RESOURCE_TYPE_NOT_FOUND ;
 scalar_t__ FindResourceExW (int ,int ,int ,int ) ;
 scalar_t__ FindResourceW (int ,int ,int ) ;
 scalar_t__ GetLastError () ;
 int GetModuleHandleW (int *) ;
 int LANG_ENGLISH ;
 int LANG_FRENCH ;
 int LANG_GERMAN ;
 int LANG_NEUTRAL ;
 int MAKEINTRESOURCEW (int) ;
 int MAKELANGID (int ,int ) ;
 scalar_t__ RT_DIALOG ;
 scalar_t__ RT_MENU ;
 int SUBLANG_DEFAULT ;
 int SUBLANG_NEUTRAL ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_find_resource(void)
{
    HRSRC rsrc;

    rsrc = FindResourceW( GetModuleHandleW(((void*)0)), MAKEINTRESOURCEW(1), (LPCWSTR)RT_MENU );
    ok( rsrc != 0, "resource not found\n" );
    rsrc = FindResourceExW( GetModuleHandleW(((void*)0)), (LPCWSTR)RT_MENU, MAKEINTRESOURCEW(1),
                            MAKELANGID( LANG_NEUTRAL, SUBLANG_NEUTRAL ));
    ok( rsrc != 0, "resource not found\n" );
    rsrc = FindResourceExW( GetModuleHandleW(((void*)0)), (LPCWSTR)RT_MENU, MAKEINTRESOURCEW(1),
                            MAKELANGID( LANG_GERMAN, SUBLANG_DEFAULT ));
    ok( rsrc != 0, "resource not found\n" );

    SetLastError( 0xdeadbeef );
    rsrc = FindResourceW( GetModuleHandleW(((void*)0)), MAKEINTRESOURCEW(1), (LPCWSTR)RT_DIALOG );
    ok( !rsrc, "resource found\n" );
    ok( GetLastError() == ERROR_RESOURCE_TYPE_NOT_FOUND, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    rsrc = FindResourceW( GetModuleHandleW(((void*)0)), MAKEINTRESOURCEW(2), (LPCWSTR)RT_MENU );
    ok( !rsrc, "resource found\n" );
    ok( GetLastError() == ERROR_RESOURCE_NAME_NOT_FOUND, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    rsrc = FindResourceExW( GetModuleHandleW(((void*)0)), (LPCWSTR)RT_MENU, MAKEINTRESOURCEW(1),
                            MAKELANGID( LANG_ENGLISH, SUBLANG_DEFAULT ) );
    ok( !rsrc, "resource found\n" );
    ok( GetLastError() == ERROR_RESOURCE_LANG_NOT_FOUND, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    rsrc = FindResourceExW( GetModuleHandleW(((void*)0)), (LPCWSTR)RT_MENU, MAKEINTRESOURCEW(1),
                            MAKELANGID( LANG_FRENCH, SUBLANG_DEFAULT ) );
    ok( !rsrc, "resource found\n" );
    ok( GetLastError() == ERROR_RESOURCE_LANG_NOT_FOUND, "wrong error %u\n", GetLastError() );
}
