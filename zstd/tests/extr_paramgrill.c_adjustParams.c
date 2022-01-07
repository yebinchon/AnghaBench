
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_6__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;


 size_t NUM_PARAMS ;
 int ZSTD_adjustCParams (int ,size_t const,size_t const) ;
 TYPE_1__ cParamsToPVals (int ) ;
 size_t fadt_ind ;
 int pvalsToCParams (TYPE_1__) ;
 size_t strt_ind ;

__attribute__((used)) static paramValues_t
adjustParams(paramValues_t p, const size_t maxBlockSize, const size_t dictSize)
{
    paramValues_t ot = p;
    varInds_t i;
    p = cParamsToPVals(ZSTD_adjustCParams(pvalsToCParams(p), maxBlockSize, dictSize));
    if (!dictSize) { p.vals[fadt_ind] = 0; }

    for(i = strt_ind + 1; i < NUM_PARAMS; i++) {
        p.vals[i] = ot.vals[i];
    }
    return p;
}
