
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 size_t ZSTD_decompressSequences (void*,void*,size_t,int const*,size_t,int const*,size_t) ;
 size_t ZSTDv01_decodeLiteralsBlock (void*,void*,size_t,int const**,size_t*,void const*,size_t) ;
 scalar_t__ ZSTDv01_isError (size_t) ;

__attribute__((used)) static size_t ZSTD_decompressBlock(
                            void* ctx,
                            void* dst, size_t maxDstSize,
                      const void* src, size_t srcSize)
{

    const BYTE* ip = (const BYTE*)src;
    const BYTE* litPtr = ((void*)0);
    size_t litSize = 0;
    size_t errorCode;


    errorCode = ZSTDv01_decodeLiteralsBlock(ctx, dst, maxDstSize, &litPtr, &litSize, src, srcSize);
    if (ZSTDv01_isError(errorCode)) return errorCode;
    ip += errorCode;
    srcSize -= errorCode;

    return ZSTD_decompressSequences(ctx, dst, maxDstSize, ip, srcSize, litPtr, litSize);
}
