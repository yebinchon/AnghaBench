
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* strategy; void* targetLength; void* minMatch; void* searchLog; void* chainLog; void* hashLog; void* windowLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef int FUZZ_dataProducer_t ;


 void* FUZZ_dataProducer_uint32Range (int *,int ,int) ;
 int ZSTD_CHAINLOG_MIN ;
 int ZSTD_HASHLOG_MIN ;
 int ZSTD_MINMATCH_MAX ;
 int ZSTD_MINMATCH_MIN ;
 int ZSTD_SEARCHLOG_MIN ;
 int ZSTD_STRATEGY_MAX ;
 int ZSTD_STRATEGY_MIN ;
 int ZSTD_WINDOWLOG_MIN ;
 TYPE_1__ ZSTD_adjustCParams (TYPE_1__,size_t,int ) ;

ZSTD_compressionParameters FUZZ_randomCParams(size_t srcSize, FUZZ_dataProducer_t *producer)
{

    ZSTD_compressionParameters cParams;
    cParams.windowLog = FUZZ_dataProducer_uint32Range(producer, ZSTD_WINDOWLOG_MIN, 15);
    cParams.hashLog = FUZZ_dataProducer_uint32Range(producer, ZSTD_HASHLOG_MIN, 15);
    cParams.chainLog = FUZZ_dataProducer_uint32Range(producer, ZSTD_CHAINLOG_MIN, 16);
    cParams.searchLog = FUZZ_dataProducer_uint32Range(producer, ZSTD_SEARCHLOG_MIN, 9);
    cParams.minMatch = FUZZ_dataProducer_uint32Range(producer, ZSTD_MINMATCH_MIN,
                                          ZSTD_MINMATCH_MAX);
    cParams.targetLength = FUZZ_dataProducer_uint32Range(producer, 0, 512);
    cParams.strategy = FUZZ_dataProducer_uint32Range(producer, ZSTD_STRATEGY_MIN, ZSTD_STRATEGY_MAX);
    return ZSTD_adjustCParams(cParams, srcSize, 0);
}
