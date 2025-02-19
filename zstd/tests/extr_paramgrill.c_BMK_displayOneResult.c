
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cSize; scalar_t__ dSpeed; scalar_t__ cSpeed; } ;
struct TYPE_8__ {int * vals; } ;
struct TYPE_7__ {TYPE_1__ result; TYPE_3__ params; } ;
typedef TYPE_2__ winnerInfo_t ;
typedef size_t varInds_t ;
typedef int FILE ;


 double MB_UNIT ;
 size_t NUM_PARAMS ;
 TYPE_3__ cParamUnsetMin (TYPE_3__) ;
 int displayParamVal (int *,size_t,int ,int) ;
 int fprintf (int *,char*,...) ;
 scalar_t__* g_silenceParams ;

__attribute__((used)) static void
BMK_displayOneResult(FILE* f, winnerInfo_t res, const size_t srcSize)
{
    varInds_t v;
    int first = 1;
    res.params = cParamUnsetMin(res.params);
    fprintf(f, "    {");
    for (v = 0; v < NUM_PARAMS; v++) {
        if (g_silenceParams[v]) { continue; }
        if (!first) { fprintf(f, ","); }
        displayParamVal(f, v, res.params.vals[v], 3);
        first = 0;
    }

    { double const ratio = res.result.cSize ?
                            (double)srcSize / res.result.cSize : 0;
        double const cSpeedMBps = (double)res.result.cSpeed / MB_UNIT;
        double const dSpeedMBps = (double)res.result.dSpeed / MB_UNIT;

        fprintf(f, " },     /* R:%5.3f at %5.1f MB/s - %5.1f MB/s */\n",
                            ratio, cSpeedMBps, dSpeedMBps);
    }
}
