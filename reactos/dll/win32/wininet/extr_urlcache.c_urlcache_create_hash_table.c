
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {void* hash_table_off; } ;
typedef TYPE_3__ urlcache_header ;
typedef int entry_header ;
struct TYPE_9__ {int signature; } ;
struct TYPE_12__ {TYPE_2__* hash_table; scalar_t__ id; void* next; TYPE_1__ header; } ;
typedef TYPE_4__ entry_hash_table ;
struct TYPE_10__ {void* key; void* offset; } ;
typedef void* DWORD ;
typedef int BYTE ;


 void* ERROR_SUCCESS ;
 void* HASHTABLE_FREE ;
 int HASHTABLE_SIZE ;
 int HASH_SIGNATURE ;
 void* urlcache_entry_alloc (TYPE_3__*,int,int **) ;

__attribute__((used)) static DWORD urlcache_create_hash_table(urlcache_header *header, entry_hash_table *hash_table_prev, entry_hash_table **hash_table)
{
    DWORD dwOffset, error;
    int i;

    if((error = urlcache_entry_alloc(header, 0x20, (entry_header**)hash_table)) != ERROR_SUCCESS)
        return error;

    dwOffset = (BYTE*)*hash_table-(BYTE*)header;

    if(hash_table_prev)
        hash_table_prev->next = dwOffset;
    else
        header->hash_table_off = dwOffset;

    (*hash_table)->header.signature = HASH_SIGNATURE;
    (*hash_table)->next = 0;
    (*hash_table)->id = hash_table_prev ? hash_table_prev->id+1 : 0;
    for(i = 0; i < HASHTABLE_SIZE; i++) {
        (*hash_table)->hash_table[i].offset = HASHTABLE_FREE;
        (*hash_table)->hash_table[i].key = HASHTABLE_FREE;
    }
    return ERROR_SUCCESS;
}
