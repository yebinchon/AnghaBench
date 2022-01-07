
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nbSlices; int * capacities; int * slicePtrs; } ;
typedef TYPE_1__ slice_collection_t ;
typedef int ZSTD_CDict ;
typedef int ZSTD_CCtx ;


 int CONTROL (int) ;
 size_t ZSTD_compressCCtx (int * const,int ,int ,int ,int ,int) ;
 size_t ZSTD_compress_usingCDict (int * const,int ,int ,int ,int ,int *) ;
 int * ZSTD_createCCtx () ;
 int ZSTD_isError (size_t) ;
 int assert (int) ;

__attribute__((used)) static size_t compressBlocks(size_t* cSizes,
                             slice_collection_t dstBlockBuffers,
                             slice_collection_t srcBlockBuffers,
                             ZSTD_CDict* cdict, int cLevel)
{
    size_t const nbBlocks = srcBlockBuffers.nbSlices;
    assert(dstBlockBuffers.nbSlices == srcBlockBuffers.nbSlices);

    ZSTD_CCtx* const cctx = ZSTD_createCCtx();
    assert(cctx != ((void*)0));

    size_t totalCSize = 0;
    for (size_t blockNb=0; blockNb < nbBlocks; blockNb++) {
        size_t cBlockSize;
        if (cdict == ((void*)0)) {
            cBlockSize = ZSTD_compressCCtx(cctx,
                            dstBlockBuffers.slicePtrs[blockNb], dstBlockBuffers.capacities[blockNb],
                            srcBlockBuffers.slicePtrs[blockNb], srcBlockBuffers.capacities[blockNb],
                            cLevel);
        } else {
            cBlockSize = ZSTD_compress_usingCDict(cctx,
                            dstBlockBuffers.slicePtrs[blockNb], dstBlockBuffers.capacities[blockNb],
                            srcBlockBuffers.slicePtrs[blockNb], srcBlockBuffers.capacities[blockNb],
                            cdict);
        }
        CONTROL(!ZSTD_isError(cBlockSize));
        if (cSizes) cSizes[blockNb] = cBlockSize;
        totalCSize += cBlockSize;
    }
    return totalCSize;
}
