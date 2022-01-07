
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef scalar_t__ U32 ;


 int DEBUGLOG (int,char*,scalar_t__) ;
 scalar_t__ ZSTD_LDM_MINMATCH_MIN ;
 int ZSTD_ldm_ipow (int ,scalar_t__) ;
 int assert (int) ;
 int prime8bytes ;

U64 ZSTD_ldm_getHashPower(U32 minMatchLength) {
    DEBUGLOG(4, "ZSTD_ldm_getHashPower: mml=%u", minMatchLength);
    assert(minMatchLength >= ZSTD_LDM_MINMATCH_MIN);
    return ZSTD_ldm_ipow(prime8bytes, minMatchLength - 1);
}
