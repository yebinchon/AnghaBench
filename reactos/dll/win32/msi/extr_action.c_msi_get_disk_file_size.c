
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int INVALID_FILE_SIZE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;

DWORD msi_get_disk_file_size( LPCWSTR filename )
{
    HANDLE file;
    DWORD size;

    file = CreateFileW( filename, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0) );
    if (file == INVALID_HANDLE_VALUE)
        return INVALID_FILE_SIZE;

    size = GetFileSize( file, ((void*)0) );
    CloseHandle( file );
    return size;
}
