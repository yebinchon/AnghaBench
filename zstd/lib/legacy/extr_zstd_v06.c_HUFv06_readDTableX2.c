
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
typedef int U16 ;
struct TYPE_2__ {void* nbBits; void* byte; } ;
typedef TYPE_1__ HUFv06_DEltX2 ;
typedef void* BYTE ;


 size_t ERROR (int ) ;
 int HUFv06_ABSOLUTEMAX_TABLELOG ;
 int HUFv06_MAX_SYMBOL_VALUE ;
 int HUFv06_STATIC_ASSERT (int) ;
 scalar_t__ HUFv06_isError (size_t) ;
 size_t HUFv06_readStats (void**,int,int*,int*,int*,void const*,size_t) ;
 int tableLog_tooLarge ;

size_t HUFv06_readDTableX2 (U16* DTable, const void* src, size_t srcSize)
{
    BYTE huffWeight[HUFv06_MAX_SYMBOL_VALUE + 1];
    U32 rankVal[HUFv06_ABSOLUTEMAX_TABLELOG + 1];
    U32 tableLog = 0;
    size_t iSize;
    U32 nbSymbols = 0;
    U32 n;
    U32 nextRankStart;
    void* const dtPtr = DTable + 1;
    HUFv06_DEltX2* const dt = (HUFv06_DEltX2*)dtPtr;

    HUFv06_STATIC_ASSERT(sizeof(HUFv06_DEltX2) == sizeof(U16));


    iSize = HUFv06_readStats(huffWeight, HUFv06_MAX_SYMBOL_VALUE + 1, rankVal, &nbSymbols, &tableLog, src, srcSize);
    if (HUFv06_isError(iSize)) return iSize;


    if (tableLog > DTable[0]) return ERROR(tableLog_tooLarge);
    DTable[0] = (U16)tableLog;


    nextRankStart = 0;
    for (n=1; n<tableLog+1; n++) {
        U32 current = nextRankStart;
        nextRankStart += (rankVal[n] << (n-1));
        rankVal[n] = current;
    }


    for (n=0; n<nbSymbols; n++) {
        const U32 w = huffWeight[n];
        const U32 length = (1 << w) >> 1;
        U32 i;
        HUFv06_DEltX2 D;
        D.byte = (BYTE)n; D.nbBits = (BYTE)(tableLog + 1 - w);
        for (i = rankVal[w]; i < rankVal[w] + length; i++)
            dt[i] = D;
        rankVal[w] += length;
    }

    return iSize;
}
