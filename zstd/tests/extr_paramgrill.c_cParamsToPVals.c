
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_5__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;
struct TYPE_6__ {int strategy; int targetLength; int minMatch; int searchLog; int hashLog; int chainLog; int windowLog; } ;
typedef TYPE_2__ ZSTD_compressionParameters ;


 size_t NUM_PARAMS ;
 size_t clog_ind ;
 size_t hlog_ind ;
 int * mintable ;
 size_t mml_ind ;
 size_t slog_ind ;
 size_t strt_ind ;
 size_t tlen_ind ;
 size_t wlog_ind ;

__attribute__((used)) static paramValues_t cParamsToPVals(ZSTD_compressionParameters c)
{
    paramValues_t p;
    varInds_t i;
    p.vals[wlog_ind] = c.windowLog;
    p.vals[clog_ind] = c.chainLog;
    p.vals[hlog_ind] = c.hashLog;
    p.vals[slog_ind] = c.searchLog;
    p.vals[mml_ind] = c.minMatch;
    p.vals[tlen_ind] = c.targetLength;
    p.vals[strt_ind] = c.strategy;


    for (i = strt_ind + 1; i < NUM_PARAMS; i++) {
        p.vals[i] = mintable[i];
    }
    return p;
}
