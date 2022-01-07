
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int result; int params; } ;
typedef TYPE_1__ winnerInfo_t ;
typedef int paramValues_t ;
typedef int U64 ;
typedef int FILE ;
typedef int BMK_benchResult_t ;


 int BMK_displayOneResult (int *,TYPE_1__,size_t const) ;
 int const CUSTOM_LEVEL ;
 scalar_t__ TIMED ;
 unsigned long long TIMELOOP_NANOSEC ;
 int UTIL_clockSpanNano (int ) ;
 int fprintf (int *,char*,...) ;
 int g_time ;
 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static void
BMK_printWinner(FILE* f, const int cLevel, const BMK_benchResult_t result, const paramValues_t params, const size_t srcSize)
{
    char lvlstr[15] = "Custom Level";
    winnerInfo_t w;
    w.params = params;
    w.result = result;

    fprintf(f, "\r%79s\r", "");

    if(cLevel != CUSTOM_LEVEL) {
        snprintf(lvlstr, 15, "  Level %2d  ", cLevel);
    }

    if(TIMED) {
        const U64 mn_in_ns = 60ULL * TIMELOOP_NANOSEC;
        const U64 time_ns = UTIL_clockSpanNano(g_time);
        const U64 minutes = time_ns / mn_in_ns;
        fprintf(f, "%1lu:%2lu:%05.2f - ",
                (unsigned long) minutes / 60,
                (unsigned long) minutes % 60,
                (double)(time_ns - (minutes * mn_in_ns)) / TIMELOOP_NANOSEC );
    }

    fprintf(f, "/* %s */   ", lvlstr);
    BMK_displayOneResult(f, w, srcSize);
}
