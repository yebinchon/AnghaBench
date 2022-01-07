
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef int ZSTD_CCtx ;


 int CHECK_F (int ) ;
 int ZSTD_checkCParams (int ) ;
 size_t ZSTD_compressBegin_internal (int *,void const*,size_t,TYPE_1__,unsigned long long) ;

size_t ZSTD_compressBegin_advanced(ZSTD_CCtx *cctx, const void *dict, size_t dictSize, ZSTD_parameters params, unsigned long long pledgedSrcSize)
{

 CHECK_F(ZSTD_checkCParams(params.cParams));
 return ZSTD_compressBegin_internal(cctx, dict, dictSize, params, pledgedSrcSize);
}
