
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* vals; } ;
typedef TYPE_1__ paramValues_t ;
struct TYPE_7__ {scalar_t__ cMem; } ;
typedef TYPE_2__ constraint_t ;


 int ZSTD_btlazy2 ;
 size_t ZSTD_estimateCStreamSize_usingCParams (int ) ;
 size_t clog_ind ;
 size_t hlog_ind ;
 int* mintable ;
 int pvalsToCParams (TYPE_1__ const) ;
 size_t slog_ind ;
 size_t strt_ind ;
 size_t wlog_ind ;

__attribute__((used)) static int
redundantParams(const paramValues_t paramValues, const constraint_t target, const size_t maxBlockSize)
{
    return
       (ZSTD_estimateCStreamSize_usingCParams(pvalsToCParams(paramValues)) > (size_t)target.cMem)
    || ((1ULL << (paramValues.vals[wlog_ind] - 1)) >= maxBlockSize && paramValues.vals[wlog_ind] != mintable[wlog_ind])
    || (paramValues.vals[clog_ind] > (paramValues.vals[wlog_ind] + (paramValues.vals[strt_ind] > ZSTD_btlazy2)))
    || (paramValues.vals[slog_ind] > paramValues.vals[clog_ind])
    || (paramValues.vals[hlog_ind] > paramValues.vals[wlog_ind] + 1);
}
