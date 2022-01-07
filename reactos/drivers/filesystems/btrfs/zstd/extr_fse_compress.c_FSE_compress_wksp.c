
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int S16 ;
typedef int FSE_CTable ;
typedef int BYTE ;


 int CHECK_F (int ) ;
 int CHECK_V_F (size_t,int ) ;
 size_t ERROR (int ) ;
 size_t FSE_CTABLE_SIZE_U32 (unsigned int,unsigned int) ;
 unsigned int FSE_DEFAULT_TABLELOG ;
 int FSE_MAX_SYMBOL_VALUE ;
 size_t FSE_WKSP_SIZE_U32 (unsigned int,unsigned int) ;
 int FSE_buildCTable_wksp (int *,int *,unsigned int,unsigned int,void*,size_t const) ;
 int FSE_compress_usingCTable (int *,int,void const*,size_t,int *) ;
 int FSE_normalizeCount (int *,unsigned int,int *,size_t,unsigned int) ;
 unsigned int FSE_optimalTableLog (unsigned int,size_t,unsigned int) ;
 int FSE_writeNCount (int *,int,int *,unsigned int,unsigned int) ;
 int HIST_count_wksp (int *,unsigned int*,void const*,size_t,unsigned int*) ;
 size_t cSize ;
 size_t maxCount ;
 size_t nc_err ;
 int tableLog_tooLarge ;

size_t FSE_compress_wksp (void* dst, size_t dstSize, const void* src, size_t srcSize, unsigned maxSymbolValue, unsigned tableLog, void* workSpace, size_t wkspSize)
{
    BYTE* const ostart = (BYTE*) dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + dstSize;

    U32 count[FSE_MAX_SYMBOL_VALUE+1];
    S16 norm[FSE_MAX_SYMBOL_VALUE+1];
    FSE_CTable* CTable = (FSE_CTable*)workSpace;
    size_t const CTableSize = FSE_CTABLE_SIZE_U32(tableLog, maxSymbolValue);
    void* scratchBuffer = (void*)(CTable + CTableSize);
    size_t const scratchBufferSize = wkspSize - (CTableSize * sizeof(FSE_CTable));


    if (wkspSize < FSE_WKSP_SIZE_U32(tableLog, maxSymbolValue)) return ERROR(tableLog_tooLarge);
    if (srcSize <= 1) return 0;
    if (!maxSymbolValue) maxSymbolValue = FSE_MAX_SYMBOL_VALUE;
    if (!tableLog) tableLog = FSE_DEFAULT_TABLELOG;


    { CHECK_V_F(maxCount, HIST_count_wksp(count, &maxSymbolValue, src, srcSize, (unsigned*)scratchBuffer) );
        if (maxCount == srcSize) return 1;
        if (maxCount == 1) return 0;
        if (maxCount < (srcSize >> 7)) return 0;
    }

    tableLog = FSE_optimalTableLog(tableLog, srcSize, maxSymbolValue);
    CHECK_F( FSE_normalizeCount(norm, tableLog, count, srcSize, maxSymbolValue) );


    { CHECK_V_F(nc_err, FSE_writeNCount(op, oend-op, norm, maxSymbolValue, tableLog) );
        op += nc_err;
    }


    CHECK_F( FSE_buildCTable_wksp(CTable, norm, maxSymbolValue, tableLog, scratchBuffer, scratchBufferSize) );
    { CHECK_V_F(cSize, FSE_compress_usingCTable(op, oend - op, src, srcSize, CTable) );
        if (cSize == 0) return 0;
        op += cSize;
    }


    if ( (size_t)(op-ostart) >= srcSize-1 ) return 0;

    return op-ostart;
}
