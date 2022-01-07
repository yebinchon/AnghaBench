
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv07_DCtx ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t ZSTDv07_BLOCKSIZE_ABSOLUTEMAX ;
 size_t ZSTDv07_decodeLiteralsBlock (int *,void const*,size_t) ;
 size_t ZSTDv07_decompressSequences (int *,void*,size_t,int const*,size_t) ;
 scalar_t__ ZSTDv07_isError (size_t const) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv07_decompressBlock_internal(ZSTDv07_DCtx* dctx,
                            void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;

    if (srcSize >= ZSTDv07_BLOCKSIZE_ABSOLUTEMAX) return ERROR(srcSize_wrong);


    { size_t const litCSize = ZSTDv07_decodeLiteralsBlock(dctx, src, srcSize);
        if (ZSTDv07_isError(litCSize)) return litCSize;
        ip += litCSize;
        srcSize -= litCSize;
    }
    return ZSTDv07_decompressSequences(dctx, dst, dstCapacity, ip, srcSize);
}
