
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 size_t ERROR (int ) ;
 int dstSize_tooSmall ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static size_t ZSTD_generateNxBytes(void* dst, size_t dstCapacity, BYTE value, size_t length)
{
    if (length > dstCapacity) return ERROR(dstSize_tooSmall);
    memset(dst, value, length);
    return length;
}
