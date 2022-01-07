
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* LPVOID ;
typedef int * LPDWORD ;
typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileMappingW (scalar_t__,int *,int ,int ,int ,int *) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int ) ;
 int FILE_FLAG_RANDOM_ACCESS ;
 int FILE_MAP_READ ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 void* MapViewOfFile (scalar_t__,int ,int ,int ,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;

__attribute__((used)) static void *map_fileW( LPCWSTR name, LPDWORD filesize )
{
    HANDLE hFile, hMapping;
    LPVOID ptr = ((void*)0);

    hFile = CreateFileW( name, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
                         OPEN_EXISTING, FILE_FLAG_RANDOM_ACCESS, 0 );
    if (hFile != INVALID_HANDLE_VALUE)
    {
        hMapping = CreateFileMappingW( hFile, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0) );
        if (hMapping)
        {
            ptr = MapViewOfFile( hMapping, FILE_MAP_READ, 0, 0, 0 );
            CloseHandle( hMapping );
            if (filesize)
                *filesize = GetFileSize( hFile, ((void*)0) );
        }
        CloseHandle( hFile );
    }
    return ptr;
}
