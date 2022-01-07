
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int urlcache_header ;
struct hash_entry {scalar_t__ key; } ;
struct TYPE_3__ {struct hash_entry* hash_table; } ;
typedef TYPE_1__ entry_hash_table ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ HASHTABLE_DEL ;
 scalar_t__ HASHTABLE_FREE ;
 size_t HASHTABLE_SIZE ;
 int TRACE (char*,size_t) ;
 int TRUE ;

__attribute__((used)) static BOOL urlcache_enum_hash_table_entries(const urlcache_header *pHeader, const entry_hash_table *pHashEntry,
                                          DWORD * index, const struct hash_entry **ppHashEntry)
{
    for (; *index < HASHTABLE_SIZE ; (*index)++)
    {
        if (pHashEntry->hash_table[*index].key==HASHTABLE_FREE || pHashEntry->hash_table[*index].key==HASHTABLE_DEL)
            continue;

        *ppHashEntry = &pHashEntry->hash_table[*index];
        TRACE("entry found %d\n", *index);
        return TRUE;
    }
    TRACE("no more entries (%d)\n", *index);
    return FALSE;
}
