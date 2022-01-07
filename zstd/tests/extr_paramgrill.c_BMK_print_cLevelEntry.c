
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_7__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;
struct TYPE_8__ {int cSize; scalar_t__ dSpeed; scalar_t__ cSpeed; } ;
typedef int FILE ;
typedef TYPE_2__ BMK_benchResult_t ;


 double MB_UNIT ;
 int const NB_LEVELS_TRACKED ;
 int assert (int) ;
 TYPE_1__ cParamUnsetMin (TYPE_1__) ;
 int displayParamVal (int *,size_t,int ,int) ;
 int fprintf (int *,char*,...) ;
 size_t strt_ind ;

__attribute__((used)) static void
BMK_print_cLevelEntry(FILE* f, const int cLevel,
                      paramValues_t params,
                      const BMK_benchResult_t result, const size_t srcSize)
{
    varInds_t v;
    int first = 1;

    assert(cLevel >= 0);
    assert(cLevel <= NB_LEVELS_TRACKED);
    params = cParamUnsetMin(params);

    fprintf(f, "   {");


    for (v = 0; v <= strt_ind; v++) {
        if (!first) { fprintf(f, ","); }
        displayParamVal(f, v, params.vals[v], 3);
        first = 0;
    }

    { double const ratio = result.cSize ?
                            (double)srcSize / result.cSize : 0;
        double const cSpeedMBps = (double)result.cSpeed / MB_UNIT;
        double const dSpeedMBps = (double)result.dSpeed / MB_UNIT;

        fprintf(f, " },   /* level %2i:  R=%5.3f at %5.1f MB/s - %5.1f MB/s */\n",
                             cLevel, ratio, cSpeedMBps, dSpeedMBps);
    }
}
