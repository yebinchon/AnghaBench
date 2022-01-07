
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ targetLength; int strategy; int searchLength; int searchLog; int hashLog; int chainLog; int windowLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;


 int CLAMP (int ,int ,int ) ;
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
 int ZSTD_btultra ;
 int ZSTD_fast ;

__attribute__((used)) static ZSTD_compressionParameters
ZSTD_clampCParams(ZSTD_compressionParameters cParams)
{




    { if (cParams.windowLog<ZSTD_WINDOWLOG_MIN) cParams.windowLog=ZSTD_WINDOWLOG_MIN; else if (cParams.windowLog>ZSTD_WINDOWLOG_MAX) cParams.windowLog=ZSTD_WINDOWLOG_MAX; };
    { if (cParams.chainLog<ZSTD_CHAINLOG_MIN) cParams.chainLog=ZSTD_CHAINLOG_MIN; else if (cParams.chainLog>ZSTD_CHAINLOG_MAX) cParams.chainLog=ZSTD_CHAINLOG_MAX; };
    { if (cParams.hashLog<ZSTD_HASHLOG_MIN) cParams.hashLog=ZSTD_HASHLOG_MIN; else if (cParams.hashLog>ZSTD_HASHLOG_MAX) cParams.hashLog=ZSTD_HASHLOG_MAX; };
    { if (cParams.searchLog<ZSTD_SEARCHLOG_MIN) cParams.searchLog=ZSTD_SEARCHLOG_MIN; else if (cParams.searchLog>ZSTD_SEARCHLOG_MAX) cParams.searchLog=ZSTD_SEARCHLOG_MAX; };
    { if (cParams.searchLength<ZSTD_SEARCHLENGTH_MIN) cParams.searchLength=ZSTD_SEARCHLENGTH_MIN; else if (cParams.searchLength>ZSTD_SEARCHLENGTH_MAX) cParams.searchLength=ZSTD_SEARCHLENGTH_MAX; };
    ZSTD_STATIC_ASSERT(ZSTD_TARGETLENGTH_MIN == 0);
    if (cParams.targetLength > ZSTD_TARGETLENGTH_MAX)
        cParams.targetLength = ZSTD_TARGETLENGTH_MAX;
    { if (cParams.strategy<ZSTD_fast) cParams.strategy=ZSTD_fast; else if (cParams.strategy>ZSTD_btultra) cParams.strategy=ZSTD_btultra; };
    return cParams;
}
