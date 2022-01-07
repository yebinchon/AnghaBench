
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolEncodingType_e ;
typedef int ZSTD_seqSymbol ;
typedef size_t const U32 ;
typedef int S16 ;
typedef size_t BYTE ;


 size_t ERROR (int ) ;
 int FSE_isError (size_t const) ;
 size_t FSE_readNCount (int *,size_t const*,size_t const*,void const*,size_t) ;
 int GENERIC ;
 int MaxSeq ;
 int PREFETCH_AREA (void const* const,size_t const) ;
 int SEQSYMBOL_TABLE_SIZE (size_t const) ;
 int ZSTD_buildFSETable (int *,int *,size_t const,size_t const*,size_t const*,size_t const) ;
 int ZSTD_buildSeqTable_rle (int *,size_t const,size_t const) ;
 int assert (int ) ;
 int corruption_detected ;




 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_buildSeqTable(ZSTD_seqSymbol* DTableSpace, const ZSTD_seqSymbol** DTablePtr,
                                 symbolEncodingType_e type, U32 max, U32 maxLog,
                                 const void* src, size_t srcSize,
                                 const U32* baseValue, const U32* nbAdditionalBits,
                                 const ZSTD_seqSymbol* defaultTable, U32 flagRepeatTable,
                                 int ddictIsCold, int nbSeq)
{
    switch(type)
    {
    case 128 :
        if (!srcSize) return ERROR(srcSize_wrong);
        if ( (*(const BYTE*)src) > max) return ERROR(corruption_detected);
        { U32 const symbol = *(const BYTE*)src;
            U32 const baseline = baseValue[symbol];
            U32 const nbBits = nbAdditionalBits[symbol];
            ZSTD_buildSeqTable_rle(DTableSpace, baseline, nbBits);
        }
        *DTablePtr = DTableSpace;
        return 1;
    case 131 :
        *DTablePtr = defaultTable;
        return 0;
    case 129:
        if (!flagRepeatTable) return ERROR(corruption_detected);

        if (ddictIsCold && (nbSeq > 24 )) {
            const void* const pStart = *DTablePtr;
            size_t const pSize = sizeof(ZSTD_seqSymbol) * (SEQSYMBOL_TABLE_SIZE(maxLog));
            PREFETCH_AREA(pStart, pSize);
        }
        return 0;
    case 130 :
        { U32 tableLog;
            S16 norm[MaxSeq+1];
            size_t const headerSize = FSE_readNCount(norm, &max, &tableLog, src, srcSize);
            if (FSE_isError(headerSize)) return ERROR(corruption_detected);
            if (tableLog > maxLog) return ERROR(corruption_detected);
            ZSTD_buildFSETable(DTableSpace, norm, max, baseValue, nbAdditionalBits, tableLog);
            *DTablePtr = DTableSpace;
            return headerSize;
        }
    default :
        assert(0);
        return ERROR(GENERIC);
    }
}
