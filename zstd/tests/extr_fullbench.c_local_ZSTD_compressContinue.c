
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_2; int member_1; } ;
struct TYPE_4__ {int cParams; TYPE_2__ fParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef TYPE_2__ ZSTD_frameParameters ;
typedef int ZSTD_compressionParameters ;


 int ZSTD_compressBegin_advanced (int ,int *,int ,TYPE_1__,size_t) ;
 size_t ZSTD_compressEnd (int ,void*,size_t,void const*,size_t) ;
 int g_zcc ;

__attribute__((used)) static size_t local_ZSTD_compressContinue(const void* src, size_t srcSize,
                                          void* dst, size_t dstCapacity,
                                          void* payload)
{
    ZSTD_parameters p;
    ZSTD_frameParameters f = { 1 , 0, 0 };
    p.fParams = f;
    p.cParams = *(ZSTD_compressionParameters*)payload;
    ZSTD_compressBegin_advanced(g_zcc, ((void*)0), 0, p, srcSize);
    return ZSTD_compressEnd(g_zcc, dst, dstCapacity, src, srcSize);
}
