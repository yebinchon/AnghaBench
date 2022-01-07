
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int paramValues_t ;
typedef int memoTable_t ;
typedef int contexts_t ;
typedef int constraint_t ;
struct TYPE_4__ {int srcSize; int maxBlockSize; } ;
typedef TYPE_1__ buffers_t ;
typedef int BMK_benchResult_t ;


 int BETTER_RESULT ;
 int BMK_printWinnerOpt (int ,int ,int ,int const,int const,int ) ;
 int CUSTOM_LEVEL ;
 scalar_t__ DEBUG ;
 int DISPLAY (char*,int) ;
 scalar_t__ INFEASIBLE_THRESHOLD ;
 int WORSE_RESULT ;
 int allBench (int *,TYPE_1__ const,int const,int const,int const,int *,int const) ;
 scalar_t__ memoTableGet (int * const,int const) ;
 int memoTableSet (int * const,int const,int) ;
 scalar_t__ redundantParams (int const,int const,int ) ;
 int stdout ;

__attribute__((used)) static int benchMemo(BMK_benchResult_t* resultPtr,
                const buffers_t buf, const contexts_t ctx,
                const paramValues_t cParams,
                const constraint_t target,
                BMK_benchResult_t* winnerResult, memoTable_t* const memoTableArray,
                const int feas) {
    static int bmcount = 0;
    int res;

    if ( memoTableGet(memoTableArray, cParams) >= INFEASIBLE_THRESHOLD
      || redundantParams(cParams, target, buf.maxBlockSize) ) {
        return WORSE_RESULT;
    }

    res = allBench(resultPtr, buf, ctx, cParams, target, winnerResult, feas);

    if(DEBUG && !(bmcount % 250)) {
        DISPLAY("Count: %d\n", bmcount);
        bmcount++;
    }
    BMK_printWinnerOpt(stdout, CUSTOM_LEVEL, *resultPtr, cParams, target, buf.srcSize);

    if(res == BETTER_RESULT || feas) {
        memoTableSet(memoTableArray, cParams, 255);
    }
    return res;
}
