
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ priceType; int const litSumBasePrice; int * litFreq; } ;
typedef TYPE_1__ optState_t ;
typedef int U32 ;
typedef size_t BYTE ;


 int const BITCOST_MULTIPLIER ;
 int WEIGHT (int ,int) ;
 int assert (int) ;
 scalar_t__ zop_predef ;

__attribute__((used)) static U32 ZSTD_rawLiteralsCost(const BYTE* const literals, U32 const litLength,
                                const optState_t* const optPtr,
                                int optLevel)
{
    if (litLength == 0) return 0;
    if (optPtr->priceType == zop_predef)
        return (litLength*6) * BITCOST_MULTIPLIER;


    { U32 price = litLength * optPtr->litSumBasePrice;
        U32 u;
        for (u=0; u < litLength; u++) {
            assert(WEIGHT(optPtr->litFreq[literals[u]], optLevel) <= optPtr->litSumBasePrice);
            price -= WEIGHT(optPtr->litFreq[literals[u]], optLevel);
        }
        return price;
    }
}
