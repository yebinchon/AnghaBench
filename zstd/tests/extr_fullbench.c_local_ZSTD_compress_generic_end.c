
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_compress2 (int ,void*,size_t,void const*,size_t) ;
 int g_cstream ;

__attribute__((used)) static size_t
local_ZSTD_compress_generic_end(const void* src, size_t srcSize,
                                void* dst, size_t dstCapacity,
                                void* payload)
{
    (void)payload;
    return ZSTD_compress2(g_cstream, dst, dstCapacity, src, srcSize);
}
