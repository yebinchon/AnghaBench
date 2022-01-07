
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int DTable ;
 size_t ERROR (int ) ;
 int HUFv05_CREATE_STATIC_DTABLEX2 (int ,int ) ;
 int HUFv05_MAX_TABLELOG ;
 size_t HUFv05_decompress1X2_usingDTable (void*,size_t,int const*,size_t,int ) ;
 scalar_t__ HUFv05_isError (size_t) ;
 size_t HUFv05_readDTableX2 (int ,void const*,size_t) ;
 int srcSize_wrong ;

size_t HUFv05_decompress1X2 (void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    HUFv05_CREATE_STATIC_DTABLEX2(DTable, HUFv05_MAX_TABLELOG);
    const BYTE* ip = (const BYTE*) cSrc;
    size_t errorCode;

    errorCode = HUFv05_readDTableX2 (DTable, cSrc, cSrcSize);
    if (HUFv05_isError(errorCode)) return errorCode;
    if (errorCode >= cSrcSize) return ERROR(srcSize_wrong);
    ip += errorCode;
    cSrcSize -= errorCode;

    return HUFv05_decompress1X2_usingDTable (dst, dstSize, ip, cSrcSize, DTable);
}
