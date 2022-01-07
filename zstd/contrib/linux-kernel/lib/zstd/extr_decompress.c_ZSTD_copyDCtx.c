
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 size_t WILDCOPY_OVERLENGTH ;
 size_t ZSTD_BLOCKSIZE_ABSOLUTEMAX ;
 size_t ZSTD_frameHeaderSize_max ;
 int memcpy (int *,int const*,int) ;

void ZSTD_copyDCtx(ZSTD_DCtx *dstDCtx, const ZSTD_DCtx *srcDCtx)
{
 size_t const workSpaceSize = (ZSTD_BLOCKSIZE_ABSOLUTEMAX + WILDCOPY_OVERLENGTH) + ZSTD_frameHeaderSize_max;
 memcpy(dstDCtx, srcDCtx, sizeof(ZSTD_DCtx) - workSpaceSize);
}
