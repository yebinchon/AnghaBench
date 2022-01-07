
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * base; } ;
struct TYPE_5__ {scalar_t__* hashTable3; scalar_t__ hashLog3; scalar_t__ nextToUpdate3; TYPE_1__ window; } ;
typedef TYPE_2__ ZSTD_matchState_t ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 size_t ZSTD_hash3Ptr (int const* const,scalar_t__ const) ;
 int assert (int) ;

__attribute__((used)) static U32 ZSTD_insertAndFindFirstIndexHash3 (ZSTD_matchState_t* ms, const BYTE* const ip)
{
    U32* const hashTable3 = ms->hashTable3;
    U32 const hashLog3 = ms->hashLog3;
    const BYTE* const base = ms->window.base;
    U32 idx = ms->nextToUpdate3;
    U32 const target = ms->nextToUpdate3 = (U32)(ip - base);
    size_t const hash3 = ZSTD_hash3Ptr(ip, hashLog3);
    assert(hashLog3 > 0);

    while(idx < target) {
        hashTable3[ZSTD_hash3Ptr(base+idx, hashLog3)] = idx;
        idx++;
    }

    return hashTable3[hash3];
}
