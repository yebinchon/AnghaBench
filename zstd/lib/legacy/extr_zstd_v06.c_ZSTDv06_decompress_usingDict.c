
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;


 int ZSTDv06_checkContinuity (int *,void*) ;
 int ZSTDv06_decompressBegin_usingDict (int *,void const*,size_t) ;
 size_t ZSTDv06_decompressFrame (int *,void*,size_t,void const*,size_t) ;

size_t ZSTDv06_decompress_usingDict(ZSTDv06_DCtx* dctx,
                                 void* dst, size_t dstCapacity,
                                 const void* src, size_t srcSize,
                                 const void* dict, size_t dictSize)
{
    ZSTDv06_decompressBegin_usingDict(dctx, dict, dictSize);
    ZSTDv06_checkContinuity(dctx, dst);
    return ZSTDv06_decompressFrame(dctx, dst, dstCapacity, src, srcSize);
}
