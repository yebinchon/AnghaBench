
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int winnerInfo_t ;
typedef int paramValues_t ;
typedef int contexts_t ;
struct TYPE_4__ {int srcSize; } ;
typedef TYPE_1__ buffers_t ;
typedef int UTIL_time_t ;
typedef int FILE ;
typedef int BYTE ;


 int BMK_saveAndPrint_cLevelTable (int *,int *,int ) ;
 int BMK_seed (int *,int ,TYPE_1__ const,int const) ;
 int FUZ_rand (int *) ;
 int* NB_TESTS_PLAYED (int ) ;
 scalar_t__ UTIL_clockSpanMicro (int const) ;
 int UTIL_getTime () ;
 int g_maxNbVariations ;
 scalar_t__ g_maxVariationTime ;
 int g_rand ;
 int paramValid (int ) ;
 int paramVaryOnce (int,int,int *) ;
 int strt_ind ;

__attribute__((used)) static void playAround(FILE* f,
                       winnerInfo_t* winners,
                       paramValues_t p,
                       const buffers_t buf, const contexts_t ctx)
{
    int nbVariations = 0;
    UTIL_time_t const clockStart = UTIL_getTime();

    while (UTIL_clockSpanMicro(clockStart) < g_maxVariationTime) {
        if (nbVariations++ > g_maxNbVariations) break;

        do {
            int i;
            for(i = 0; i < 4; i++) {
                paramVaryOnce(FUZ_rand(&g_rand) % (strt_ind + 1),
                              ((FUZ_rand(&g_rand) & 1) << 1) - 1,
                              &p);
            }
        } while (!paramValid(p));


        if (FUZ_rand(&g_rand) & ((1 << *NB_TESTS_PLAYED(p))-1))
            continue;


        { BYTE* const b = NB_TESTS_PLAYED(p);
            (*b)++;
        }
        if (!BMK_seed(winners, p, buf, ctx)) continue;


        BMK_saveAndPrint_cLevelTable(f, winners, buf.srcSize);
        playAround(f, winners, p, buf, ctx);
    }

}
