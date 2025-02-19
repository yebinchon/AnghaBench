
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int CHAR_BIT ;

__attribute__((used)) static inline BYTE urlcache_block_is_free(BYTE *allocation_table, DWORD block_number)
{
    BYTE mask = 1 << (block_number%CHAR_BIT);
    return (allocation_table[block_number/CHAR_BIT] & mask) == 0;
}
