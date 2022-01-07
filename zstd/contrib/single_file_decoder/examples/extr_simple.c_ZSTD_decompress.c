
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (void*,void const*,size_t) ;

size_t ZSTD_decompress(void* dst, size_t dstLen, const void* src, size_t srcLen) {
 return (memcmp(dst, src, (srcLen < dstLen) ? srcLen : dstLen)) ? 0 : dstLen;
}
