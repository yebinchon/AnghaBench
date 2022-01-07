
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int lpszLocalFileName; } ;
typedef int LPWSTR ;
typedef TYPE_1__* LPINTERNET_CACHE_ENTRY_INFOW ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GetLastError () ;
 int GetUrlCacheEntryInfoW (int ,TYPE_1__*,int *) ;
 int MAX_PATH ;
 int URLDownloadToCacheFileW (int *,int ,int ,int ,int ,int *) ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 int lstrcpyW (int ,int ) ;
 TYPE_1__* msi_alloc (int ) ;
 int msi_free (TYPE_1__*) ;

UINT msi_download_file( LPCWSTR szUrl, LPWSTR filename )
{
    LPINTERNET_CACHE_ENTRY_INFOW cache_entry;
    DWORD size = 0;
    HRESULT hr;





    GetUrlCacheEntryInfoW( szUrl, ((void*)0), &size );
    if ( GetLastError() != ERROR_FILE_NOT_FOUND )
    {
        cache_entry = msi_alloc( size );
        if ( !GetUrlCacheEntryInfoW( szUrl, cache_entry, &size ) )
        {
            UINT error = GetLastError();
            msi_free( cache_entry );
            return error;
        }

        lstrcpyW( filename, cache_entry->lpszLocalFileName );
        msi_free( cache_entry );
        return ERROR_SUCCESS;
    }

    hr = URLDownloadToCacheFileW( ((void*)0), szUrl, filename, MAX_PATH, 0, ((void*)0) );
    if ( FAILED(hr) )
    {
        WARN("failed to download %s to cache file\n", debugstr_w(szUrl));
        return ERROR_FUNCTION_FAILED;
    }

    return ERROR_SUCCESS;
}
