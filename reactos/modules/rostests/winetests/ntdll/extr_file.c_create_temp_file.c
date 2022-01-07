
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ HANDLE ;


 int CREATE_ALWAYS ;
 scalar_t__ CreateFileA (char*,int,int ,int *,int ,int,int ) ;
 int FILE_FLAG_DELETE_ON_CLOSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int GetTempPathA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int ok (int,char*) ;

__attribute__((used)) static HANDLE create_temp_file( ULONG flags )
{
    char path[MAX_PATH], buffer[MAX_PATH];
    HANDLE handle;

    GetTempPathA( MAX_PATH, path );
    GetTempFileNameA( path, "foo", 0, buffer );
    handle = CreateFileA(buffer, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                         flags | FILE_FLAG_DELETE_ON_CLOSE, 0);
    ok( handle != INVALID_HANDLE_VALUE, "failed to create temp file\n" );
    return (handle == INVALID_HANDLE_VALUE) ? 0 : handle;
}
