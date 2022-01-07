
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef size_t U32 ;
typedef scalar_t__ BYTE ;


 scalar_t__ const LDM_HASH_CHAR_OFFSET ;
 int prime8bytes ;

__attribute__((used)) static U64 ZSTD_ldm_getRollingHash(const BYTE* buf, U32 len)
{
    U64 ret = 0;
    U32 i;
    for (i = 0; i < len; i++) {
        ret *= prime8bytes;
        ret += buf[i] + LDM_HASH_CHAR_OFFSET;
    }
    return ret;
}
