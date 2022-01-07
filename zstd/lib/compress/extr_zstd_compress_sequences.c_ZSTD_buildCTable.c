
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolEncodingType_e ;
typedef int const U32 ;
typedef int const S16 ;
typedef int FSE_CTable ;
typedef size_t BYTE ;


 int DEBUGLOG (int,char*,unsigned int) ;
 int FORWARD_IF_ERROR (size_t const) ;
 size_t const FSE_buildCTable_rle (int *,size_t) ;
 size_t const FSE_buildCTable_wksp (int *,int const*,int const,int const,void*,size_t) ;
 size_t const FSE_normalizeCount (int const*,int const,unsigned int*,size_t,int const) ;
 int const FSE_optimalTableLog (int const,size_t,int const) ;
 size_t FSE_writeNCount (size_t*,int,int const*,int const,int const) ;
 int GENERIC ;
 int MaxSeq ;
 int RETURN_ERROR (int ) ;
 int RETURN_ERROR_IF (int,int ) ;
 int assert (int) ;
 int dstSize_tooSmall ;
 int memcpy (int *,int const*,size_t) ;





size_t
ZSTD_buildCTable(void* dst, size_t dstCapacity,
                FSE_CTable* nextCTable, U32 FSELog, symbolEncodingType_e type,
                unsigned* count, U32 max,
                const BYTE* codeTable, size_t nbSeq,
                const S16* defaultNorm, U32 defaultNormLog, U32 defaultMax,
                const FSE_CTable* prevCTable, size_t prevCTableSize,
                void* entropyWorkspace, size_t entropyWorkspaceSize)
{
    BYTE* op = (BYTE*)dst;
    const BYTE* const oend = op + dstCapacity;
    DEBUGLOG(6, "ZSTD_buildCTable (dstCapacity=%u)", (unsigned)dstCapacity);

    switch (type) {
    case 128:
        FORWARD_IF_ERROR(FSE_buildCTable_rle(nextCTable, (BYTE)max));
        RETURN_ERROR_IF(dstCapacity==0, dstSize_tooSmall);
        *op = codeTable[0];
        return 1;
    case 129:
        memcpy(nextCTable, prevCTable, prevCTableSize);
        return 0;
    case 131:
        FORWARD_IF_ERROR(FSE_buildCTable_wksp(nextCTable, defaultNorm, defaultMax, defaultNormLog, entropyWorkspace, entropyWorkspaceSize));
        return 0;
    case 130: {
        S16 norm[MaxSeq + 1];
        size_t nbSeq_1 = nbSeq;
        const U32 tableLog = FSE_optimalTableLog(FSELog, nbSeq, max);
        if (count[codeTable[nbSeq-1]] > 1) {
            count[codeTable[nbSeq-1]]--;
            nbSeq_1--;
        }
        assert(nbSeq_1 > 1);
        FORWARD_IF_ERROR(FSE_normalizeCount(norm, tableLog, count, nbSeq_1, max));
        { size_t const NCountSize = FSE_writeNCount(op, oend - op, norm, max, tableLog);
            FORWARD_IF_ERROR(NCountSize);
            FORWARD_IF_ERROR(FSE_buildCTable_wksp(nextCTable, norm, max, tableLog, entropyWorkspace, entropyWorkspaceSize));
            return NCountSize;
        }
    }
    default: assert(0); RETURN_ERROR(GENERIC);
    }
}
