
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int urlcache_header ;
typedef int entry_hash_table ;
typedef scalar_t__ LPBYTE ;
typedef scalar_t__ DWORD ;



__attribute__((used)) static inline entry_hash_table* urlcache_get_hash_table(const urlcache_header *pHeader, DWORD dwOffset)
{
    if(!dwOffset)
        return ((void*)0);
    return (entry_hash_table*)((LPBYTE)pHeader + dwOffset);
}
