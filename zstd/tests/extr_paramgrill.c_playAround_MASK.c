#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winnerInfo_t ;
typedef  int /*<<< orphan*/  paramValues_t ;
typedef  int /*<<< orphan*/  contexts_t ;
struct TYPE_4__ {int /*<<< orphan*/  srcSize; } ;
typedef  TYPE_1__ buffers_t ;
typedef  int /*<<< orphan*/  UTIL_time_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__ const,int /*<<< orphan*/  const) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  g_maxNbVariations ; 
 scalar_t__ g_maxVariationTime ; 
 int /*<<< orphan*/  g_rand ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ *) ; 
 int strt_ind ; 

__attribute__((used)) static void FUNC8(FILE* f,
                       winnerInfo_t* winners,
                       paramValues_t p,
                       const buffers_t buf, const contexts_t ctx)
{
    int nbVariations = 0;
    UTIL_time_t const clockStart = FUNC5();

    while (FUNC4(clockStart) < g_maxVariationTime) {
        if (nbVariations++ > g_maxNbVariations) break;

        do {
            int i;
            for(i = 0; i < 4; i++) {
                FUNC7(FUNC2(&g_rand) % (strt_ind + 1),
                              ((FUNC2(&g_rand) & 1) << 1) - 1,
                              &p);
            }
        } while (!FUNC6(p));

        /* exclude faster if already played params */
        if (FUNC2(&g_rand) & ((1 << *FUNC3(p))-1))
            continue;

        /* test */
        {   BYTE* const b = FUNC3(p);
            (*b)++;
        }
        if (!FUNC1(winners, p, buf, ctx)) continue;

        /* improvement found => search more */
        FUNC0(f, winners, buf.srcSize);
        FUNC8(f, winners, p, buf, ctx);
    }

}