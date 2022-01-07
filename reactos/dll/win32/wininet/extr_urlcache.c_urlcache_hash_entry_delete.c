
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int key; } ;
typedef int BOOL ;


 int HASHTABLE_DEL ;
 int TRUE ;

__attribute__((used)) static BOOL urlcache_hash_entry_delete(struct hash_entry *pHashEntry)
{
    pHashEntry->key = HASHTABLE_DEL;
    return TRUE;
}
