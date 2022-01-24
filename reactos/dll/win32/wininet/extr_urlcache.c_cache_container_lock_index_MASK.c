#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ size; size_t signature; size_t dirs_no; TYPE_1__* directory_data; } ;
typedef  TYPE_2__ urlcache_header ;
struct TYPE_11__ {scalar_t__ file_size; int /*<<< orphan*/  mutex; int /*<<< orphan*/  mapping; } ;
typedef  TYPE_3__ cache_container ;
struct TYPE_9__ {scalar_t__ name; } ;
typedef  scalar_t__ LPVOID ;
typedef  scalar_t__ DWORD ;
typedef  size_t BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FILE_MAP_WRITE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  MIN_BLOCK_NO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static urlcache_header* FUNC10(cache_container *pContainer)
{
    BYTE index;
    LPVOID pIndexData;
    urlcache_header* pHeader;
    DWORD error;

    /* acquire mutex */
    FUNC7(pContainer->mutex, INFINITE);

    pIndexData = FUNC2(pContainer->mapping, FILE_MAP_WRITE, 0, 0, 0);

    if (!pIndexData)
    {
        FUNC3(pContainer->mutex);
        FUNC0("Couldn't MapViewOfFile. Error: %d\n", FUNC1());
        return NULL;
    }
    pHeader = (urlcache_header*)pIndexData;

    /* file has grown - we need to remap to prevent us getting
     * access violations when we try and access beyond the end
     * of the memory mapped file */
    if (pHeader->size != pContainer->file_size)
    {
        FUNC6( pHeader );
        FUNC8(pContainer);
        error = FUNC9(pContainer, MIN_BLOCK_NO);
        if (error != ERROR_SUCCESS)
        {
            FUNC3(pContainer->mutex);
            FUNC4(error);
            return NULL;
        }
        pIndexData = FUNC2(pContainer->mapping, FILE_MAP_WRITE, 0, 0, 0);

        if (!pIndexData)
        {
            FUNC3(pContainer->mutex);
            FUNC0("Couldn't MapViewOfFile. Error: %d\n", FUNC1());
            return NULL;
        }
        pHeader = (urlcache_header*)pIndexData;
    }

    FUNC5("Signature: %s, file size: %d bytes\n", pHeader->signature, pHeader->size);

    for (index = 0; index < pHeader->dirs_no; index++)
    {
        FUNC5("Directory[%d] = \"%.8s\"\n", index, pHeader->directory_data[index].name);
    }
    
    return pHeader;
}