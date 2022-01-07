
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_buffered_policy_e ;
typedef int ZSTD_CDict ;
typedef int ZSTD_CCtx_params ;
typedef int ZSTD_CCtx ;
typedef scalar_t__ U64 ;


 int DEBUGLOG (int,char*,unsigned int) ;
 size_t ZSTD_resetCCtx_byAttachingCDict (int *,int const*,int const,scalar_t__,int ) ;
 size_t ZSTD_resetCCtx_byCopyingCDict (int *,int const*,int const,scalar_t__,int ) ;
 scalar_t__ ZSTD_shouldAttachDict (int const*,int const*,scalar_t__) ;

__attribute__((used)) static size_t ZSTD_resetCCtx_usingCDict(ZSTD_CCtx* cctx,
                            const ZSTD_CDict* cdict,
                            const ZSTD_CCtx_params* params,
                            U64 pledgedSrcSize,
                            ZSTD_buffered_policy_e zbuff)
{

    DEBUGLOG(4, "ZSTD_resetCCtx_usingCDict (pledgedSrcSize=%u)",
                (unsigned)pledgedSrcSize);

    if (ZSTD_shouldAttachDict(cdict, params, pledgedSrcSize)) {
        return ZSTD_resetCCtx_byAttachingCDict(
            cctx, cdict, *params, pledgedSrcSize, zbuff);
    } else {
        return ZSTD_resetCCtx_byCopyingCDict(
            cctx, cdict, *params, pledgedSrcSize, zbuff);
    }
}
