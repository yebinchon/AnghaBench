
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FSE_DTable ;
typedef int BYTE ;


 int CHECK_F (int ) ;
 size_t ERROR (int ) ;
 int FSE_MAX_SYMBOL_VALUE ;
 int FSE_buildDTable (int *,short*,unsigned int,unsigned int) ;
 size_t FSE_decompress_usingDTable (void*,size_t,int const*,size_t,int *) ;
 scalar_t__ FSE_isError (size_t const) ;
 size_t FSE_readNCount (short*,unsigned int*,unsigned int*,int const* const,size_t) ;
 int tableLog_tooLarge ;

size_t FSE_decompress_wksp(void* dst, size_t dstCapacity, const void* cSrc, size_t cSrcSize, FSE_DTable* workSpace, unsigned maxLog)
{
    const BYTE* const istart = (const BYTE*)cSrc;
    const BYTE* ip = istart;
    short counting[FSE_MAX_SYMBOL_VALUE+1];
    unsigned tableLog;
    unsigned maxSymbolValue = FSE_MAX_SYMBOL_VALUE;


    size_t const NCountLength = FSE_readNCount (counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
    if (FSE_isError(NCountLength)) return NCountLength;

    if (tableLog > maxLog) return ERROR(tableLog_tooLarge);
    ip += NCountLength;
    cSrcSize -= NCountLength;

    CHECK_F( FSE_buildDTable (workSpace, counting, maxSymbolValue, tableLog) );

    return FSE_decompress_usingDTable (dst, dstCapacity, ip, cSrcSize, workSpace);
}
