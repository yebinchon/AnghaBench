
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int CHAR_BIT ;

__attribute__((used)) static inline void urlcache_block_alloc(BYTE *allocation_table, DWORD block_number)
{
    BYTE mask = 1 << (block_number%CHAR_BIT);
    allocation_table[block_number/CHAR_BIT] |= mask;
}
