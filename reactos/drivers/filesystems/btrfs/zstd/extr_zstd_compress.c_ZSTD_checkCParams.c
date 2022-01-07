
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ targetLength; scalar_t__ strategy; int searchLength; int searchLog; int hashLog; int chainLog; int windowLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef scalar_t__ U32 ;


 int CLAMPCHECK (int ,int ,int ) ;
 size_t ERROR (int ) ;
 int ZSTD_CHAINLOG_MAX ;
 int ZSTD_CHAINLOG_MIN ;
 int ZSTD_HASHLOG_MAX ;
 int ZSTD_HASHLOG_MIN ;
 int ZSTD_SEARCHLENGTH_MAX ;
 int ZSTD_SEARCHLENGTH_MIN ;
 int ZSTD_SEARCHLOG_MAX ;
 int ZSTD_SEARCHLOG_MIN ;
 int ZSTD_STATIC_ASSERT (int) ;
 scalar_t__ ZSTD_TARGETLENGTH_MAX ;
 scalar_t__ ZSTD_TARGETLENGTH_MIN ;
 int ZSTD_WINDOWLOG_MAX ;
 int ZSTD_WINDOWLOG_MIN ;
 scalar_t__ ZSTD_btultra ;
 int parameter_outOfBound ;
 int parameter_unsupported ;

size_t ZSTD_checkCParams(ZSTD_compressionParameters cParams)
{
    CLAMPCHECK(cParams.windowLog, ZSTD_WINDOWLOG_MIN, ZSTD_WINDOWLOG_MAX);
    CLAMPCHECK(cParams.chainLog, ZSTD_CHAINLOG_MIN, ZSTD_CHAINLOG_MAX);
    CLAMPCHECK(cParams.hashLog, ZSTD_HASHLOG_MIN, ZSTD_HASHLOG_MAX);
    CLAMPCHECK(cParams.searchLog, ZSTD_SEARCHLOG_MIN, ZSTD_SEARCHLOG_MAX);
    CLAMPCHECK(cParams.searchLength, ZSTD_SEARCHLENGTH_MIN, ZSTD_SEARCHLENGTH_MAX);
    ZSTD_STATIC_ASSERT(ZSTD_TARGETLENGTH_MIN == 0);
    if (cParams.targetLength > ZSTD_TARGETLENGTH_MAX)
        return ERROR(parameter_outOfBound);
    if ((U32)(cParams.strategy) > (U32)ZSTD_btultra)
        return ERROR(parameter_unsupported);
    return 0;
}
