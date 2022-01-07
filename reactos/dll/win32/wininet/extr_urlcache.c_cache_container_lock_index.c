
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ size; size_t signature; size_t dirs_no; TYPE_1__* directory_data; } ;
typedef TYPE_2__ urlcache_header ;
struct TYPE_11__ {scalar_t__ file_size; int mutex; int mapping; } ;
typedef TYPE_3__ cache_container ;
struct TYPE_9__ {scalar_t__ name; } ;
typedef scalar_t__ LPVOID ;
typedef scalar_t__ DWORD ;
typedef size_t BYTE ;


 int ERR (char*,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int FILE_MAP_WRITE ;
 int GetLastError () ;
 int INFINITE ;
 int MIN_BLOCK_NO ;
 scalar_t__ MapViewOfFile (int ,int ,int ,int ,int ) ;
 int ReleaseMutex (int ) ;
 int SetLastError (scalar_t__) ;
 int TRACE (char*,size_t,scalar_t__) ;
 int UnmapViewOfFile (TYPE_2__*) ;
 int WaitForSingleObject (int ,int ) ;
 int cache_container_close_index (TYPE_3__*) ;
 scalar_t__ cache_container_open_index (TYPE_3__*,int ) ;

__attribute__((used)) static urlcache_header* cache_container_lock_index(cache_container *pContainer)
{
    BYTE index;
    LPVOID pIndexData;
    urlcache_header* pHeader;
    DWORD error;


    WaitForSingleObject(pContainer->mutex, INFINITE);

    pIndexData = MapViewOfFile(pContainer->mapping, FILE_MAP_WRITE, 0, 0, 0);

    if (!pIndexData)
    {
        ReleaseMutex(pContainer->mutex);
        ERR("Couldn't MapViewOfFile. Error: %d\n", GetLastError());
        return ((void*)0);
    }
    pHeader = (urlcache_header*)pIndexData;




    if (pHeader->size != pContainer->file_size)
    {
        UnmapViewOfFile( pHeader );
        cache_container_close_index(pContainer);
        error = cache_container_open_index(pContainer, MIN_BLOCK_NO);
        if (error != ERROR_SUCCESS)
        {
            ReleaseMutex(pContainer->mutex);
            SetLastError(error);
            return ((void*)0);
        }
        pIndexData = MapViewOfFile(pContainer->mapping, FILE_MAP_WRITE, 0, 0, 0);

        if (!pIndexData)
        {
            ReleaseMutex(pContainer->mutex);
            ERR("Couldn't MapViewOfFile. Error: %d\n", GetLastError());
            return ((void*)0);
        }
        pHeader = (urlcache_header*)pIndexData;
    }

    TRACE("Signature: %s, file size: %d bytes\n", pHeader->signature, pHeader->size);

    for (index = 0; index < pHeader->dirs_no; index++)
    {
        TRACE("Directory[%d] = \"%.8s\"\n", index, pHeader->directory_data[index].name);
    }

    return pHeader;
}
