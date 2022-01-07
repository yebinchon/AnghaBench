
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hash_table_off; } ;
typedef TYPE_2__ urlcache_header ;
struct hash_entry {int key; } ;
struct TYPE_7__ {scalar_t__ signature; } ;
struct TYPE_9__ {scalar_t__ id; struct hash_entry* hash_table; TYPE_1__ header; int next; } ;
typedef TYPE_3__ entry_hash_table ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,scalar_t__,...) ;
 int FALSE ;
 int HASHTABLE_BLOCKSIZE ;
 int HASHTABLE_FLAG_BITS ;
 int HASHTABLE_NUM_ENTRIES ;
 scalar_t__ HASH_SIGNATURE ;
 int TRUE ;
 TYPE_3__* urlcache_get_hash_table (TYPE_2__ const*,int ) ;
 int urlcache_hash_key (int ) ;

__attribute__((used)) static BOOL urlcache_find_hash_entry(const urlcache_header *pHeader, LPCSTR lpszUrl, struct hash_entry **ppHashEntry)
{
    DWORD key = urlcache_hash_key(lpszUrl);
    DWORD offset = (key & (HASHTABLE_NUM_ENTRIES-1)) * HASHTABLE_BLOCKSIZE;
    entry_hash_table* pHashEntry;
    DWORD id = 0;

    key >>= HASHTABLE_FLAG_BITS;

    for (pHashEntry = urlcache_get_hash_table(pHeader, pHeader->hash_table_off);
         pHashEntry; pHashEntry = urlcache_get_hash_table(pHeader, pHashEntry->next))
    {
        int i;
        if (pHashEntry->id != id++)
        {
            ERR("Error: not right hash table number (%d) expected %d\n", pHashEntry->id, id);
            continue;
        }

        if (pHashEntry->header.signature != HASH_SIGNATURE)
        {
            ERR("Error: not right signature (\"%.4s\") - expected \"HASH\"\n", (LPCSTR)&pHashEntry->header.signature);
            continue;
        }

        for (i = 0; i < HASHTABLE_BLOCKSIZE; i++)
        {
            struct hash_entry *pHashElement = &pHashEntry->hash_table[offset + i];
            if (key == pHashElement->key>>HASHTABLE_FLAG_BITS)
            {






                *ppHashEntry = pHashElement;
                return TRUE;
            }
        }
    }
    return FALSE;
}
