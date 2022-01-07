
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ contentSizeFlag; } ;
struct TYPE_8__ {TYPE_1__ fParams; } ;
struct TYPE_9__ {scalar_t__ pledgedSrcSizePlusOne; scalar_t__ consumedSrcSize; TYPE_2__ appliedParams; } ;
typedef TYPE_3__ ZSTD_CCtx ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (size_t const) ;
 int RETURN_ERROR_IF (int,int ,char*,unsigned int,unsigned int) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_STATIC_ASSERT (int) ;
 size_t ZSTD_compressContinue_internal (TYPE_3__*,void*,size_t,void const*,size_t,int,int) ;
 size_t ZSTD_writeEpilogue (TYPE_3__*,char*,size_t const) ;
 int assert (int) ;
 int srcSize_wrong ;

size_t ZSTD_compressEnd (ZSTD_CCtx* cctx,
                         void* dst, size_t dstCapacity,
                   const void* src, size_t srcSize)
{
    size_t endResult;
    size_t const cSize = ZSTD_compressContinue_internal(cctx,
                                dst, dstCapacity, src, srcSize,
                                1 , 1 );
    FORWARD_IF_ERROR(cSize);
    endResult = ZSTD_writeEpilogue(cctx, (char*)dst + cSize, dstCapacity-cSize);
    FORWARD_IF_ERROR(endResult);
    assert(!(cctx->appliedParams.fParams.contentSizeFlag && cctx->pledgedSrcSizePlusOne == 0));
    if (cctx->pledgedSrcSizePlusOne != 0) {
        ZSTD_STATIC_ASSERT(ZSTD_CONTENTSIZE_UNKNOWN == (unsigned long long)-1);
        DEBUGLOG(4, "end of frame : controlling src size");
        RETURN_ERROR_IF(
            cctx->pledgedSrcSizePlusOne != cctx->consumedSrcSize+1,
            srcSize_wrong,
             "error : pledgedSrcSize = %u, while realSrcSize = %u",
            (unsigned)cctx->pledgedSrcSizePlusOne-1,
            (unsigned)cctx->consumedSrcSize);
    }
    return cSize + endResult;
}
