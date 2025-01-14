
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ size; int capacity_in_blocks; } ;
typedef TYPE_1__ urlcache_header ;
struct TYPE_12__ {int mapping; int path; int cache_prefix; } ;
typedef TYPE_2__ cache_container ;
typedef scalar_t__ DWORD ;


 int ALLOCATION_TABLE_SIZE ;
 int BLOCKSIZE ;
 scalar_t__ ENTRY_START_OFFSET ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int FILE_MAP_WRITE ;
 scalar_t__ GetLastError () ;
 TYPE_1__* MapViewOfFile (int ,int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int UnmapViewOfFile (TYPE_1__*) ;
 int WARN (char*) ;
 int cache_container_close_index (TYPE_2__*) ;
 scalar_t__ cache_container_open_index (TYPE_2__*,int) ;
 int debugstr_a (int ) ;
 int debugstr_w (int ) ;
 scalar_t__ urlcache_clean_leaked_entries (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static DWORD cache_container_clean_index(cache_container *container, urlcache_header **file_view)
{
    urlcache_header *header = *file_view;
    DWORD ret;

    TRACE("(%s %s)\n", debugstr_a(container->cache_prefix), debugstr_w(container->path));

    if(urlcache_clean_leaked_entries(container, header))
        return ERROR_SUCCESS;

    if(header->size >= ALLOCATION_TABLE_SIZE*8*BLOCKSIZE + ENTRY_START_OFFSET) {
        WARN("index file has maximal size\n");
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    cache_container_close_index(container);
    ret = cache_container_open_index(container, header->capacity_in_blocks*2);
    if(ret != ERROR_SUCCESS)
        return ret;
    header = MapViewOfFile(container->mapping, FILE_MAP_WRITE, 0, 0, 0);
    if(!header)
        return GetLastError();

    UnmapViewOfFile(*file_view);
    *file_view = header;
    return ERROR_SUCCESS;
}
