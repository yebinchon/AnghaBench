
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int paramValues_t ;
typedef int contexts_t ;
typedef int constraint_t ;
struct TYPE_12__ {scalar_t__ srcSize; } ;
typedef TYPE_1__ buffers_t ;
typedef double U64 ;
struct TYPE_13__ {scalar_t__ cSize; int cSpeed; int dSpeed; } ;
typedef TYPE_2__ BMK_benchResult_t ;
typedef int BMK_benchOutcome_t ;


 int BASE_CLEVEL ;
 int BETTER_RESULT ;
 int BMK_benchMemInvertible (TYPE_1__ const,int const,int ,int const*,int ,int) ;
 int BMK_both ;
 TYPE_2__ BMK_extract_benchResult (int const) ;
 int BMK_isSuccessful_benchOutcome (int const) ;
 int DEBUGOUTPUT (char*,...) ;
 int ERROR_RESULT ;
 double TIMELOOP_NANOSEC ;
 double VARIANCE ;
 int WORSE_RESULT ;
 scalar_t__ compareResultLT (TYPE_2__,TYPE_2__,int const,scalar_t__) ;
 int feasible (TYPE_2__,int const) ;
 int g_clockGranularity ;
 int g_optmode ;
 double resultScore (TYPE_2__,scalar_t__,int const) ;

__attribute__((used)) static int allBench(BMK_benchResult_t* resultPtr,
                const buffers_t buf, const contexts_t ctx,
                const paramValues_t cParams,
                const constraint_t target,
                BMK_benchResult_t* winnerResult, int feas)
{
    BMK_benchResult_t benchres;
    double uncertaintyConstantC = 3., uncertaintyConstantD = 3.;
    double winnerRS;

    BMK_benchOutcome_t const outcome = BMK_benchMemInvertible(buf, ctx, BASE_CLEVEL, &cParams, BMK_both, 2);
    if (!BMK_isSuccessful_benchOutcome(outcome)) {
        DEBUGOUTPUT("Benchmarking failed \n");
        return ERROR_RESULT;
    }
    benchres = BMK_extract_benchResult(outcome);

    winnerRS = resultScore(*winnerResult, buf.srcSize, target);
    DEBUGOUTPUT("WinnerScore: %f \n ", winnerRS);

    *resultPtr = benchres;


    if(feas && benchres.cSize < winnerResult->cSize && !g_optmode) {
        return WORSE_RESULT;
    }


    if (benchres.cSpeed) {
        U64 const loopDurationC = (((U64)buf.srcSize * TIMELOOP_NANOSEC) / benchres.cSpeed);
        uncertaintyConstantC = ((loopDurationC + (double)(2 * g_clockGranularity))/loopDurationC);
    }

    if (benchres.dSpeed) {
        U64 const loopDurationD = (((U64)buf.srcSize * TIMELOOP_NANOSEC) / benchres.dSpeed);
        uncertaintyConstantD = ((loopDurationD + (double)(2 * g_clockGranularity))/loopDurationD);
    }


    { BMK_benchResult_t resultMax = benchres;
        resultMax.cSpeed = (unsigned long long)(resultMax.cSpeed * uncertaintyConstantC * VARIANCE);
        resultMax.dSpeed = (unsigned long long)(resultMax.dSpeed * uncertaintyConstantD * VARIANCE);



        if((feas && !feasible(resultMax, target)) ||
          (!feas && (winnerRS > resultScore(resultMax, buf.srcSize, target)))) {
            return WORSE_RESULT;
        }
    }



    if((!feas && (resultScore(benchres, buf.srcSize, target) > resultScore(*winnerResult, buf.srcSize, target))) ||
       (feas && (compareResultLT(*winnerResult, benchres, target, buf.srcSize))) ) {
        return BETTER_RESULT;
    } else {
        return WORSE_RESULT;
    }
}
