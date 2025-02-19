
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_3__ {scalar_t__* vals; } ;
typedef TYPE_1__ paramValues_t ;
typedef int FILE ;


 size_t NUM_PARAMS ;
 int displayParamVal (int *,size_t,scalar_t__,int ) ;
 int fprintf (int *,char*,...) ;
 char** g_paramNames ;
 scalar_t__* g_silenceParams ;
 size_t strt_ind ;

__attribute__((used)) static void
BMK_paramValues_into_commandLine(FILE* f, const paramValues_t params)
{
    varInds_t v;
    int first = 1;
    fprintf(f,"--zstd=");
    for (v = 0; v < NUM_PARAMS; v++) {
        if (g_silenceParams[v]) { continue; }
        if (!first) { fprintf(f, ","); }
        fprintf(f,"%s=", g_paramNames[v]);

        if (v == strt_ind) { fprintf(f,"%u", (unsigned)params.vals[v]); }
        else { displayParamVal(f, v, params.vals[v], 0); }
        first = 0;
    }
    fprintf(f, "\n");
}
