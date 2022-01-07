
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t expected; void* previousDstEnd; int phase; scalar_t__ bType; void* base; } ;
typedef TYPE_1__ dctx_t ;
struct TYPE_6__ {scalar_t__ blockType; } ;
typedef TYPE_2__ blockProperties_t ;
typedef int ZSTDv01_Dctx ;
typedef scalar_t__ U32 ;


 size_t ERROR (int ) ;
 int GENERIC ;
 void* ZSTD_blockHeaderSize ;
 size_t ZSTD_copyUncompressedBlock (void*,size_t,void const*,size_t) ;
 size_t ZSTD_decompressBlock (TYPE_1__*,void*,size_t,void const*,size_t) ;
 scalar_t__ ZSTD_magicNumber ;
 scalar_t__ ZSTD_readBE32 (void const*) ;
 size_t ZSTDv01_getcBlockSize (void const*,void*,TYPE_2__*) ;
 scalar_t__ ZSTDv01_isError (size_t) ;




 int prefix_unknown ;
 int srcSize_wrong ;

size_t ZSTDv01_decompressContinue(ZSTDv01_Dctx* dctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    dctx_t* ctx = (dctx_t*)dctx;


    if (srcSize != ctx->expected) return ERROR(srcSize_wrong);
    if (dst != ctx->previousDstEnd)
        ctx->base = dst;


    if (ctx->phase == 0)
    {

        U32 magicNumber = ZSTD_readBE32(src);
        if (magicNumber != ZSTD_magicNumber) return ERROR(prefix_unknown);
        ctx->phase = 1;
        ctx->expected = ZSTD_blockHeaderSize;
        return 0;
    }


    if (ctx->phase == 1)
    {
        blockProperties_t bp;
        size_t blockSize = ZSTDv01_getcBlockSize(src, ZSTD_blockHeaderSize, &bp);
        if (ZSTDv01_isError(blockSize)) return blockSize;
        if (bp.blockType == 130)
        {
            ctx->expected = 0;
            ctx->phase = 0;
        }
        else
        {
            ctx->expected = blockSize;
            ctx->bType = bp.blockType;
            ctx->phase = 2;
        }

        return 0;
    }


    {
        size_t rSize;
        switch(ctx->bType)
        {
        case 131:
            rSize = ZSTD_decompressBlock(ctx, dst, maxDstSize, src, srcSize);
            break;
        case 129 :
            rSize = ZSTD_copyUncompressedBlock(dst, maxDstSize, src, srcSize);
            break;
        case 128 :
            return ERROR(GENERIC);
            break;
        case 130 :
            rSize = 0;
            break;
        default:
            return ERROR(GENERIC);
        }
        ctx->phase = 1;
        ctx->expected = ZSTD_blockHeaderSize;
        ctx->previousDstEnd = (void*)( ((char*)dst) + rSize);
        return rSize;
    }

}
