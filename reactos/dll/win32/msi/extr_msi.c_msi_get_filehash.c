
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_8__ {int digest; } ;
struct TYPE_7__ {int dwData; } ;
typedef TYPE_1__ MSIFILEHASHINFO ;
typedef TYPE_2__ MD5_CTX ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileMappingW (scalar_t__,int *,int ,int ,int ,int *) ;
 scalar_t__ CreateFileW (int const*,int ,int,int *,int ,int ,int *) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int FILE_MAP_READ ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MD5Final (TYPE_2__*) ;
 int MD5Init (TYPE_2__*) ;
 int MD5Update (TYPE_2__*,void*,int ) ;
 void* MapViewOfFile (scalar_t__,int ,int ,int ,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;
 int UnmapViewOfFile (void*) ;
 int WARN (char*,int ) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;

UINT msi_get_filehash( const WCHAR *path, MSIFILEHASHINFO *hash )
{
    HANDLE handle, mapping;
    void *p;
    DWORD length;
    UINT r = ERROR_FUNCTION_FAILED;

    handle = CreateFileW( path, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_DELETE, ((void*)0), OPEN_EXISTING, 0, ((void*)0) );
    if (handle == INVALID_HANDLE_VALUE)
    {
        WARN("can't open file %u\n", GetLastError());
        return ERROR_FILE_NOT_FOUND;
    }
    if ((length = GetFileSize( handle, ((void*)0) )))
    {
        if ((mapping = CreateFileMappingW( handle, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0) )))
        {
            if ((p = MapViewOfFile( mapping, FILE_MAP_READ, 0, 0, length )))
            {
                MD5_CTX ctx;

                MD5Init( &ctx );
                MD5Update( &ctx, p, length );
                MD5Final( &ctx );
                UnmapViewOfFile( p );

                memcpy( hash->dwData, ctx.digest, sizeof(hash->dwData) );
                r = ERROR_SUCCESS;
            }
            CloseHandle( mapping );
        }
    }
    else
    {

        memset( hash->dwData, 0, sizeof(hash->dwData) );
        r = ERROR_SUCCESS;
    }

    CloseHandle( handle );
    return r;
}
