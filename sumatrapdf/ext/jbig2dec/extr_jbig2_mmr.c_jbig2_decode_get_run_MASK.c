#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mmr_table_node ;
typedef  int /*<<< orphan*/  Jbig2MmrCtx ;
typedef  int /*<<< orphan*/  Jbig2Ctx ;

/* Variables and functions */
 int ERROR ; 
 int /*<<< orphan*/  JBIG2_SEVERITY_FATAL ; 
 int UNCOMPRESSED ; 
 int ZEROES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC2(Jbig2Ctx *ctx, Jbig2MmrCtx *mmr, const mmr_table_node *table, int initial_bits)
{
    int result = 0;
    int val;

    do {
        val = FUNC0(mmr, table, initial_bits);
        if (val == ERROR)
            return FUNC1(ctx, JBIG2_SEVERITY_FATAL, -1, "invalid code detected in MMR-coded data");
        else if (val == UNCOMPRESSED)
            return FUNC1(ctx, JBIG2_SEVERITY_FATAL, -1, "uncompressed code in MMR-coded data");
        else if (val == ZEROES)
            return FUNC1(ctx, JBIG2_SEVERITY_FATAL, -1, "zeroes code in MMR-coded data");
        result += val;
    } while (val >= 64);

    return result;
}