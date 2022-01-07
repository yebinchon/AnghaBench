
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int blocks_in_use; int allocation_table; } ;
typedef TYPE_1__ urlcache_header ;
struct TYPE_6__ {int blocks_used; } ;
typedef TYPE_2__ entry_header ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int BLOCKSIZE ;
 int ENTRY_START_OFFSET ;
 int TRUE ;
 int urlcache_block_free (int ,int) ;

__attribute__((used)) static BOOL urlcache_entry_free(urlcache_header *header, entry_header *entry)
{
    DWORD start_block, block;


    start_block = ((DWORD)((BYTE*)entry - (BYTE*)header) - ENTRY_START_OFFSET) / BLOCKSIZE;
    for(block = start_block; block < start_block+entry->blocks_used; block++)
        urlcache_block_free(header->allocation_table, block);

    header->blocks_in_use -= entry->blocks_used;
    return TRUE;
}
