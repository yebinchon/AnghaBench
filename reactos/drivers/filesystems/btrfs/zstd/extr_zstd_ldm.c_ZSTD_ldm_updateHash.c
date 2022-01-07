
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef int BYTE ;


 int LDM_HASH_CHAR_OFFSET ;
 int prime8bytes ;

__attribute__((used)) static U64 ZSTD_ldm_updateHash(U64 hash, BYTE toRemove, BYTE toAdd, U64 hashPower)
{
    hash -= ((toRemove + LDM_HASH_CHAR_OFFSET) * hashPower);
    hash *= prime8bytes;
    hash += toAdd + LDM_HASH_CHAR_OFFSET;
    return hash;
}
