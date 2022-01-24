#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ size; int capacity_in_blocks; } ;
typedef  TYPE_1__ urlcache_header ;
struct TYPE_12__ {int /*<<< orphan*/  mapping; int /*<<< orphan*/  path; int /*<<< orphan*/  cache_prefix; } ;
typedef  TYPE_2__ cache_container ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int ALLOCATION_TABLE_SIZE ; 
 int BLOCKSIZE ; 
 scalar_t__ ENTRY_START_OFFSET ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FILE_MAP_WRITE ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static DWORD FUNC10(cache_container *container, urlcache_header **file_view)
{
    urlcache_header *header = *file_view;
    DWORD ret;

    FUNC2("(%s %s)\n", FUNC7(container->cache_prefix), FUNC8(container->path));

    if(FUNC9(container, header))
        return ERROR_SUCCESS;

    if(header->size >= ALLOCATION_TABLE_SIZE*8*BLOCKSIZE + ENTRY_START_OFFSET) {
        FUNC4("index file has maximal size\n");
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    FUNC5(container);
    ret = FUNC6(container, header->capacity_in_blocks*2);
    if(ret != ERROR_SUCCESS)
        return ret;
    header = FUNC1(container->mapping, FILE_MAP_WRITE, 0, 0, 0);
    if(!header)
        return FUNC0();

    FUNC3(*file_view);
    *file_view = header;
    return ERROR_SUCCESS;
}