
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int,int ,int *,int ,int ,int ) ;
 int DeleteFileA (char*) ;
 scalar_t__ FILE_TYPE_CHAR ;
 scalar_t__ FILE_TYPE_DISK ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetFileType (scalar_t__) ;
 scalar_t__ GetStdHandle (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ STD_OUTPUT_HANDLE ;
 char* filename ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetFileType(void)
{
    DWORD type, type2;
    HANDLE h = CreateFileA( filename, GENERIC_READ|GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, 0 );
    ok( h != INVALID_HANDLE_VALUE, "open %s failed\n", filename );
    type = GetFileType(h);
    ok( type == FILE_TYPE_DISK, "expected type disk got %d\n", type );
    CloseHandle( h );
    h = CreateFileA( "nul", GENERIC_READ|GENERIC_WRITE, 0, ((void*)0), OPEN_EXISTING, 0, 0 );
    ok( h != INVALID_HANDLE_VALUE, "open nul failed\n" );
    type = GetFileType(h);
    ok( type == FILE_TYPE_CHAR, "expected type char for nul got %d\n", type );
    CloseHandle( h );
    DeleteFileA( filename );
    h = GetStdHandle( STD_OUTPUT_HANDLE );
    ok( h != INVALID_HANDLE_VALUE, "GetStdHandle failed\n" );
    type = GetFileType( (HANDLE)STD_OUTPUT_HANDLE );
    type2 = GetFileType( h );
    ok(type == type2, "expected type %d for STD_OUTPUT_HANDLE got %d\n", type2, type);
}
