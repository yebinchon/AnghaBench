
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int winners ;
typedef int winnerInfo_t ;
typedef void* paramValues_t ;
struct TYPE_13__ {int dictSize; } ;
typedef TYPE_1__ contexts_t ;
struct TYPE_14__ {int srcSize; int maxBlockSize; } ;
typedef TYPE_2__ buffers_t ;
typedef int UTIL_time_t ;
struct TYPE_15__ {int cSpeed; } ;
typedef int FILE ;
typedef TYPE_3__ BMK_benchResult_t ;


 int BMK_benchParam (TYPE_3__*,TYPE_2__ const,TYPE_1__ const,void* const) ;
 int BMK_init_level_constraints (int) ;
 int BMK_saveAndPrint_cLevelTable (int * const,int *,int ) ;
 int BMK_seed (int *,void*,TYPE_2__ const,TYPE_1__ const) ;
 int BMK_selectRandomStart (int * const,int *,TYPE_2__ const,TYPE_1__ const) ;
 scalar_t__ BMK_timeSpan_s (int const) ;
 int DISPLAY (char*,...) ;
 int MB_UNIT ;
 int NB_LEVELS_TRACKED ;
 int UTIL_getTime () ;
 int ZSTD_getCParams (int,int ,int ) ;
 int ZSTD_maxCLevel () ;
 int assert (int) ;
 void* cParamsToPVals (int ) ;
 int exit (int) ;
 int fclose (int * const) ;
 int * fopen (char const* const,char*) ;
 scalar_t__ g_noSeed ;
 scalar_t__ g_singleRun ;
 int g_target ;
 scalar_t__ g_timeLimit_s ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void BMK_generate_cLevelTable(const buffers_t buf, const contexts_t ctx)
{
    paramValues_t params;
    winnerInfo_t winners[NB_LEVELS_TRACKED+1];
    const char* const rfName = "grillResults.txt";
    FILE* const f = fopen(rfName, "w");


    assert(g_singleRun==0);
    memset(winners, 0, sizeof(winners));
    if (f==((void*)0)) { DISPLAY("error opening %s \n", rfName); exit(1); }

    if (g_target) {
        BMK_init_level_constraints(g_target * MB_UNIT);
    } else {

        paramValues_t const l1params = cParamsToPVals(ZSTD_getCParams(1, buf.maxBlockSize, ctx.dictSize));
        BMK_benchResult_t testResult;
        BMK_benchParam(&testResult, buf, ctx, l1params);
        BMK_init_level_constraints((int)((testResult.cSpeed * 31) / 32));
    }


    { const int maxSeeds = g_noSeed ? 1 : ZSTD_maxCLevel();
        int i;
        for (i=0; i<=maxSeeds; i++) {
            params = cParamsToPVals(ZSTD_getCParams(i, buf.maxBlockSize, 0));
            BMK_seed(winners, params, buf, ctx);
    } }
    BMK_saveAndPrint_cLevelTable(f, winners, buf.srcSize);


    { const UTIL_time_t grillStart = UTIL_getTime();
        do {
            BMK_selectRandomStart(f, winners, buf, ctx);
        } while (BMK_timeSpan_s(grillStart) < g_timeLimit_s);
    }


    BMK_saveAndPrint_cLevelTable(f, winners, buf.srcSize);
    DISPLAY("grillParams operations completed \n");


    fclose(f);
}
