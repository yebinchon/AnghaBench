
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int key; } ;
typedef int DWORD ;


 int HASHTABLE_FLAG_BITS ;

__attribute__((used)) static void urlcache_hash_entry_set_flags(struct hash_entry *pHashEntry, DWORD dwFlag)
{
    pHashEntry->key = (pHashEntry->key >> HASHTABLE_FLAG_BITS << HASHTABLE_FLAG_BITS) | dwFlag;
}
