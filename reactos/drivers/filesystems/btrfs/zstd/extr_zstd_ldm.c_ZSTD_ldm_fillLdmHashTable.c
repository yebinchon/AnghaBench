
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int hashPower; } ;
typedef TYPE_1__ ldmState_t ;
struct TYPE_8__ {int minMatchLength; } ;
typedef TYPE_2__ ldmParams_t ;
typedef int U64 ;
typedef int U32 ;
typedef int BYTE ;


 int ZSTD_ldm_makeEntryAndInsertByTag (TYPE_1__*,int ,int ,int ,TYPE_2__ const) ;
 int ZSTD_ldm_updateHash (int ,int const,int const,int ) ;

__attribute__((used)) static U64 ZSTD_ldm_fillLdmHashTable(ldmState_t* state,
                                     U64 lastHash, const BYTE* lastHashed,
                                     const BYTE* iend, const BYTE* base,
                                     U32 hBits, ldmParams_t const ldmParams)
{
    U64 rollingHash = lastHash;
    const BYTE* cur = lastHashed + 1;

    while (cur < iend) {
        rollingHash = ZSTD_ldm_updateHash(rollingHash, cur[-1],
                                          cur[ldmParams.minMatchLength-1],
                                          state->hashPower);
        ZSTD_ldm_makeEntryAndInsertByTag(state,
                                         rollingHash, hBits,
                                         (U32)(cur - base), ldmParams);
        ++cur;
    }
    return rollingHash;
}
