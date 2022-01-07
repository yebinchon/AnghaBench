
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int varInds_t ;
struct TYPE_6__ {scalar_t__* vals; } ;
typedef TYPE_1__ paramValues_t ;
struct TYPE_7__ {size_t tableLen; int * table; int tableType; int varLen; int varArray; } ;
typedef TYPE_2__ memoTable_t ;
typedef int ZSTD_strategy ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 scalar_t__ PARAM_UNSET ;
 size_t ZSTD_STRATEGY_MAX ;
 int ZSTD_STRATEGY_MIN ;
 scalar_t__ calloc (int,size_t) ;
 int directMap ;
 int freeMemoTableArray (TYPE_2__* const) ;
 size_t memoTableLen (int ,int ) ;
 int noMemo ;
 int sanitizeVarArray (int ,size_t const,int const* const,int) ;
 size_t strt_ind ;
 int xxhashMap ;

__attribute__((used)) static memoTable_t*
createMemoTableArray(const paramValues_t p,
                     const varInds_t* const varyParams,
                     const size_t varyLen,
                     const U32 memoTableLog)
{
    memoTable_t* const mtAll = (memoTable_t*)calloc(sizeof(memoTable_t),(ZSTD_STRATEGY_MAX + 1));
    ZSTD_strategy i, stratMin = ZSTD_STRATEGY_MIN, stratMax = ZSTD_STRATEGY_MAX;

    if(mtAll == ((void*)0)) {
        return ((void*)0);
    }

    for(i = 1; i <= (int)ZSTD_STRATEGY_MAX; i++) {
        mtAll[i].varLen = sanitizeVarArray(mtAll[i].varArray, varyLen, varyParams, i);
    }


    if(memoTableLog == 0) {
        for(i = 1; i <= (int)ZSTD_STRATEGY_MAX; i++) {
            mtAll[i].tableType = noMemo;
            mtAll[i].table = ((void*)0);
            mtAll[i].tableLen = 0;
        }
        return mtAll;
    }


    if(p.vals[strt_ind] != PARAM_UNSET) {
        stratMin = p.vals[strt_ind];
        stratMax = p.vals[strt_ind];
    }


    for(i = stratMin; i <= stratMax; i++) {
        size_t mtl = memoTableLen(mtAll[i].varArray, mtAll[i].varLen);
        mtAll[i].tableType = directMap;

        if(memoTableLog != PARAM_UNSET && mtl > (1ULL << memoTableLog)) {
            mtAll[i].tableType = xxhashMap;
            mtl = (1ULL << memoTableLog);
        }

        mtAll[i].table = (BYTE*)calloc(sizeof(BYTE), mtl);
        mtAll[i].tableLen = mtl;

        if(mtAll[i].table == ((void*)0)) {
            freeMemoTableArray(mtAll);
            return ((void*)0);
        }
    }

    return mtAll;
}
