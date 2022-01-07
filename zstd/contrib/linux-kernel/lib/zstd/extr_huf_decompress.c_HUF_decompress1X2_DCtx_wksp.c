
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUF_DTable ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t HUF_decompress1X2_usingDTable_internal (void*,size_t,int const*,size_t,int *) ;
 scalar_t__ HUF_isError (size_t const) ;
 size_t HUF_readDTableX2_wksp (int *,void const*,size_t,void*,size_t) ;
 int srcSize_wrong ;

size_t HUF_decompress1X2_DCtx_wksp(HUF_DTable *DCtx, void *dst, size_t dstSize, const void *cSrc, size_t cSrcSize, void *workspace, size_t workspaceSize)
{
 const BYTE *ip = (const BYTE *)cSrc;

 size_t const hSize = HUF_readDTableX2_wksp(DCtx, cSrc, cSrcSize, workspace, workspaceSize);
 if (HUF_isError(hSize))
  return hSize;
 if (hSize >= cSrcSize)
  return ERROR(srcSize_wrong);
 ip += hSize;
 cSrcSize -= hSize;

 return HUF_decompress1X2_usingDTable_internal(dst, dstSize, ip, cSrcSize, DCtx);
}
