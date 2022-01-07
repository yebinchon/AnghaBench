
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void BYTE ;


 size_t ERROR (int ) ;
 int HUF_decompress (void*,size_t const,void const*,size_t const) ;
 scalar_t__ HUF_isError (int ) ;
 int MEM_readLE32 (void const*) ;
 int corruption_detected ;

__attribute__((used)) static size_t ZSTD_decompressLiterals(void* dst, size_t* maxDstSizePtr,
                                const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;

    const size_t litSize = (MEM_readLE32(src) & 0x1FFFFF) >> 2;
    const size_t litCSize = (MEM_readLE32(ip+2) & 0xFFFFFF) >> 5;

    if (litSize > *maxDstSizePtr) return ERROR(corruption_detected);
    if (litCSize + 5 > srcSize) return ERROR(corruption_detected);

    if (HUF_isError(HUF_decompress(dst, litSize, ip+5, litCSize))) return ERROR(corruption_detected);

    *maxDstSizePtr = litSize;
    return litCSize + 5;
}
