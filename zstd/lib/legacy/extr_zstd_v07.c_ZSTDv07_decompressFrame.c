
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int blockType; int origSize; } ;
typedef TYPE_2__ blockProperties_t ;
struct TYPE_8__ {scalar_t__ checksumFlag; } ;
struct TYPE_10__ {int xxhState; TYPE_1__ fParams; } ;
typedef TYPE_3__ ZSTDv07_DCtx ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;
 int XXH64_update (int *,int *,size_t) ;
 size_t ZSTDv07_blockHeaderSize ;
 size_t ZSTDv07_copyRawBlock (int *,int,int const*,size_t const) ;
 scalar_t__ ZSTDv07_decodeFrameHeader (TYPE_3__*,void const*,size_t const) ;
 size_t ZSTDv07_decompressBlock_internal (TYPE_3__*,int *,int,int const*,size_t const) ;
 size_t ZSTDv07_frameHeaderSize (void const*,size_t) ;
 size_t ZSTDv07_frameHeaderSize_min ;
 size_t ZSTDv07_generateNxBytes (int *,int,int const,int ) ;
 size_t ZSTDv07_getcBlockSize (int const*,int,TYPE_2__*) ;
 scalar_t__ ZSTDv07_isError (size_t const) ;




 int corruption_detected ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv07_decompressFrame(ZSTDv07_DCtx* dctx,
                                 void* dst, size_t dstCapacity,
                                 const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* const iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* const oend = ostart + dstCapacity;
    BYTE* op = ostart;
    size_t remainingSize = srcSize;


    if (srcSize < ZSTDv07_frameHeaderSize_min+ZSTDv07_blockHeaderSize) return ERROR(srcSize_wrong);


    { size_t const frameHeaderSize = ZSTDv07_frameHeaderSize(src, ZSTDv07_frameHeaderSize_min);
        if (ZSTDv07_isError(frameHeaderSize)) return frameHeaderSize;
        if (srcSize < frameHeaderSize+ZSTDv07_blockHeaderSize) return ERROR(srcSize_wrong);
        if (ZSTDv07_decodeFrameHeader(dctx, src, frameHeaderSize)) return ERROR(corruption_detected);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
    }


    while (1) {
        size_t decodedSize;
        blockProperties_t blockProperties;
        size_t const cBlockSize = ZSTDv07_getcBlockSize(ip, iend-ip, &blockProperties);
        if (ZSTDv07_isError(cBlockSize)) return cBlockSize;

        ip += ZSTDv07_blockHeaderSize;
        remainingSize -= ZSTDv07_blockHeaderSize;
        if (cBlockSize > remainingSize) return ERROR(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case 131:
            decodedSize = ZSTDv07_decompressBlock_internal(dctx, op, oend-op, ip, cBlockSize);
            break;
        case 129 :
            decodedSize = ZSTDv07_copyRawBlock(op, oend-op, ip, cBlockSize);
            break;
        case 128 :
            decodedSize = ZSTDv07_generateNxBytes(op, oend-op, *ip, blockProperties.origSize);
            break;
        case 130 :

            if (remainingSize) return ERROR(srcSize_wrong);
            decodedSize = 0;
            break;
        default:
            return ERROR(GENERIC);
        }
        if (blockProperties.blockType == 130) break;

        if (ZSTDv07_isError(decodedSize)) return decodedSize;
        if (dctx->fParams.checksumFlag) XXH64_update(&dctx->xxhState, op, decodedSize);
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}
