
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef int ZSTD_CCtx ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*) ;
 int ZSTD_checkCParams (int ) ;
 size_t ZSTD_compress_internal (int *,void*,size_t,void const*,size_t,void const*,size_t,TYPE_1__) ;

size_t ZSTD_compress_advanced (ZSTD_CCtx* cctx,
                               void* dst, size_t dstCapacity,
                         const void* src, size_t srcSize,
                         const void* dict,size_t dictSize,
                               ZSTD_parameters params)
{
    DEBUGLOG(4, "ZSTD_compress_advanced");
    CHECK_F(ZSTD_checkCParams(params.cParams));
    return ZSTD_compress_internal(cctx,
                                  dst, dstCapacity,
                                  src, srcSize,
                                  dict, dictSize,
                                  params);
}
