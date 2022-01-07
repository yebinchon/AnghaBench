
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MIN (size_t,size_t) ;
 int memcpy (void*,void const*,size_t const) ;

__attribute__((used)) static size_t ZSTD_limitCopy(void* dst, size_t dstCapacity,
                       const void* src, size_t srcSize)
{
    size_t const length = MIN(dstCapacity, srcSize);
    if (length) memcpy(dst, src, length);
    return length;
}
