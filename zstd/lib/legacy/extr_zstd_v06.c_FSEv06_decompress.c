
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DTable_max_t ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int FSEv06_MAX_SYMBOL_VALUE ;
 size_t FSEv06_buildDTable (int ,short*,unsigned int,unsigned int) ;
 size_t FSEv06_decompress_usingDTable (void*,size_t,int const*,size_t,int ) ;
 scalar_t__ FSEv06_isError (size_t const) ;
 size_t FSEv06_readNCount (short*,unsigned int*,unsigned int*,int const* const,size_t) ;
 int srcSize_wrong ;

size_t FSEv06_decompress(void* dst, size_t maxDstSize, const void* cSrc, size_t cSrcSize)
{
    const BYTE* const istart = (const BYTE*)cSrc;
    const BYTE* ip = istart;
    short counting[FSEv06_MAX_SYMBOL_VALUE+1];
    DTable_max_t dt;
    unsigned tableLog;
    unsigned maxSymbolValue = FSEv06_MAX_SYMBOL_VALUE;

    if (cSrcSize<2) return ERROR(srcSize_wrong);


    { size_t const NCountLength = FSEv06_readNCount (counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
        if (FSEv06_isError(NCountLength)) return NCountLength;
        if (NCountLength >= cSrcSize) return ERROR(srcSize_wrong);
        ip += NCountLength;
        cSrcSize -= NCountLength;
    }

    { size_t const errorCode = FSEv06_buildDTable (dt, counting, maxSymbolValue, tableLog);
      if (FSEv06_isError(errorCode)) return errorCode; }

    return FSEv06_decompress_usingDTable (dst, maxDstSize, ip, cSrcSize, dt);
}
