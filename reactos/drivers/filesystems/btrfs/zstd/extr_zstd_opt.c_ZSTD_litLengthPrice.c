
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ priceType; size_t litLengthSumBasePrice; size_t const* litLengthFreq; } ;
typedef TYPE_1__ optState_t ;
typedef size_t U32 ;


 int BITCOST_MULTIPLIER ;
 int* LL_bits ;
 size_t WEIGHT (size_t const,int) ;
 size_t ZSTD_LLcode (size_t const) ;
 scalar_t__ zop_predef ;

__attribute__((used)) static U32 ZSTD_litLengthPrice(U32 const litLength, const optState_t* const optPtr, int optLevel)
{
    if (optPtr->priceType == zop_predef) return WEIGHT(litLength, optLevel);


    { U32 const llCode = ZSTD_LLcode(litLength);
        return (LL_bits[llCode] * BITCOST_MULTIPLIER) + (optPtr->litLengthSumBasePrice - WEIGHT(optPtr->litLengthFreq[llCode], optLevel));
    }
}
