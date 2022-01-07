
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;


 size_t ERROR (int ) ;
 int * ZSTDv06_createDCtx () ;
 size_t ZSTDv06_decompressDCtx (int *,void*,size_t,void const*,size_t) ;
 int ZSTDv06_freeDCtx (int *) ;
 int memory_allocation ;

size_t ZSTDv06_decompress(void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    ZSTDv06_DCtx dctx;
    return ZSTDv06_decompressDCtx(&dctx, dst, dstCapacity, src, srcSize);

}
