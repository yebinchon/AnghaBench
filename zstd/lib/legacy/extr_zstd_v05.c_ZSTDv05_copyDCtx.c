
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;


 scalar_t__ BLOCKSIZE ;
 scalar_t__ WILDCOPY_OVERLENGTH ;
 scalar_t__ ZSTDv05_frameHeaderSize_max ;
 int memcpy (int *,int const*,scalar_t__) ;

void ZSTDv05_copyDCtx(ZSTDv05_DCtx* dstDCtx, const ZSTDv05_DCtx* srcDCtx)
{
    memcpy(dstDCtx, srcDCtx,
           sizeof(ZSTDv05_DCtx) - (BLOCKSIZE+WILDCOPY_OVERLENGTH + ZSTDv05_frameHeaderSize_max));
}
