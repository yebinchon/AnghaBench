
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t symbol; size_t weight; } ;
typedef TYPE_1__ sortedSymbol_t ;
typedef int rankVal ;
typedef size_t U32 ;
typedef scalar_t__ U16 ;
struct TYPE_6__ {int length; void* nbBits; int sequence; } ;
typedef TYPE_2__ HUFv06_DEltX4 ;
typedef void* BYTE ;


 int HUFv06_ABSOLUTEMAX_TABLELOG ;
 int MEM_writeLE16 (int *,scalar_t__) ;
 int memcpy (size_t*,size_t const*,int) ;

__attribute__((used)) static void HUFv06_fillDTableX4Level2(HUFv06_DEltX4* DTable, U32 sizeLog, const U32 consumed,
                           const U32* rankValOrigin, const int minWeight,
                           const sortedSymbol_t* sortedSymbols, const U32 sortedListSize,
                           U32 nbBitsBaseline, U16 baseSeq)
{
    HUFv06_DEltX4 DElt;
    U32 rankVal[HUFv06_ABSOLUTEMAX_TABLELOG + 1];


    memcpy(rankVal, rankValOrigin, sizeof(rankVal));


    if (minWeight>1) {
        U32 i, skipSize = rankVal[minWeight];
        MEM_writeLE16(&(DElt.sequence), baseSeq);
        DElt.nbBits = (BYTE)(consumed);
        DElt.length = 1;
        for (i = 0; i < skipSize; i++)
            DTable[i] = DElt;
    }


    { U32 s; for (s=0; s<sortedListSize; s++) {
        const U32 symbol = sortedSymbols[s].symbol;
        const U32 weight = sortedSymbols[s].weight;
        const U32 nbBits = nbBitsBaseline - weight;
        const U32 length = 1 << (sizeLog-nbBits);
        const U32 start = rankVal[weight];
        U32 i = start;
        const U32 end = start + length;

        MEM_writeLE16(&(DElt.sequence), (U16)(baseSeq + (symbol << 8)));
        DElt.nbBits = (BYTE)(nbBits + consumed);
        DElt.length = 2;
        do { DTable[i++] = DElt; } while (i<end);

        rankVal[weight] += length;
    }}
}
