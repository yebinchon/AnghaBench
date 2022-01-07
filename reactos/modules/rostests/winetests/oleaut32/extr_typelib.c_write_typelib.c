
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef scalar_t__ HRSRC ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int,int ,int *,int ,int ,int ) ;
 scalar_t__ FindResourceA (int ,int ,char*) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetModuleHandleA (int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LoadResource (int ,scalar_t__) ;
 void* LockResource (int ) ;
 scalar_t__ MAKEINTRESOURCE (int) ;
 scalar_t__ SizeofResource (int ,scalar_t__) ;
 int WriteFile (scalar_t__,void*,scalar_t__,scalar_t__*,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void write_typelib(int res_no, const char *filename)
{
    DWORD written;
    HANDLE file;
    HRSRC res;
    void *ptr;

    file = CreateFileA( filename, GENERIC_READ|GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, 0 );
    ok( file != INVALID_HANDLE_VALUE, "file creation failed\n" );
    if (file == INVALID_HANDLE_VALUE) return;
    res = FindResourceA( GetModuleHandleA(((void*)0)), (LPCSTR)MAKEINTRESOURCE(res_no), "TYPELIB" );
    ok( res != 0, "couldn't find resource\n" );
    ptr = LockResource( LoadResource( GetModuleHandleA(((void*)0)), res ));
    WriteFile( file, ptr, SizeofResource( GetModuleHandleA(((void*)0)), res ), &written, ((void*)0) );
    ok( written == SizeofResource( GetModuleHandleA(((void*)0)), res ), "couldn't write resource\n" );
    CloseHandle( file );
}
