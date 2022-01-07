
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ capacity_in_blocks; scalar_t__ blocks_in_use; int allocation_table; } ;
typedef TYPE_1__ urlcache_header ;
struct TYPE_6__ {scalar_t__ blocks_used; } ;
typedef TYPE_2__ entry_header ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 scalar_t__ BLOCKSIZE ;
 int ENTRY_START_OFFSET ;
 scalar_t__ ERROR_HANDLE_DISK_FULL ;
 scalar_t__ ERROR_SUCCESS ;
 int TRACE (char*,scalar_t__,int) ;
 int urlcache_block_alloc (int ,scalar_t__) ;
 scalar_t__ urlcache_block_is_free (int ,scalar_t__) ;

__attribute__((used)) static DWORD urlcache_entry_alloc(urlcache_header *header, DWORD blocks_needed, entry_header **entry)
{
    DWORD block, block_size;

    for(block=0; block<header->capacity_in_blocks; block+=block_size+1)
    {
        block_size = 0;
        while(block_size<blocks_needed && block_size+block<header->capacity_in_blocks
                && urlcache_block_is_free(header->allocation_table, block+block_size))
            block_size++;

        if(block_size == blocks_needed)
        {
            DWORD index;

            TRACE("Found free blocks starting at no. %d (0x%x)\n", block, ENTRY_START_OFFSET+block*BLOCKSIZE);

            for(index=0; index<blocks_needed; index++)
                urlcache_block_alloc(header->allocation_table, block+index);

            *entry = (entry_header*)((BYTE*)header+ENTRY_START_OFFSET+block*BLOCKSIZE);
            for(index=0; index<blocks_needed*BLOCKSIZE/sizeof(DWORD); index++)
                ((DWORD*)*entry)[index] = 0xdeadbeef;
            (*entry)->blocks_used = blocks_needed;

            header->blocks_in_use += blocks_needed;
            return ERROR_SUCCESS;
        }
    }

    return ERROR_HANDLE_DISK_FULL;
}
