
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int RETURN_ERROR (int ) ;
 int RETURN_ERROR_IF (int,int ) ;
 int dstBuffer_null ;
 int dstSize_tooSmall ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static size_t ZSTD_setRleBlock(void* dst, size_t dstCapacity,
                               BYTE b,
                               size_t regenSize)
{
    if (dst == ((void*)0)) {
        if (regenSize == 0) return 0;
        RETURN_ERROR(dstBuffer_null);
    }
    RETURN_ERROR_IF(regenSize > dstCapacity, dstSize_tooSmall);
    memset(dst, b, regenSize);
    return regenSize;
}
