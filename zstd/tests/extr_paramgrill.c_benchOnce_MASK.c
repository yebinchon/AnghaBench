#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dictSize; } ;
typedef  TYPE_1__ contexts_t ;
struct TYPE_8__ {int /*<<< orphan*/  srcSize; int /*<<< orphan*/  maxBlockSize; } ;
typedef  TYPE_2__ buffers_t ;
typedef  int /*<<< orphan*/  BMK_benchResult_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const,TYPE_1__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CUSTOM_LEVEL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_params ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC7(const buffers_t buf, const contexts_t ctx, const int cLevel)
{
    BMK_benchResult_t testResult;
    g_params = FUNC4(FUNC6(FUNC5(FUNC3(cLevel, buf.maxBlockSize, ctx.dictSize)), g_params), buf.maxBlockSize, ctx.dictSize);

    if (FUNC0(&testResult, buf, ctx, g_params)) {
        FUNC2("Error during benchmarking\n");
        return 1;
    }

    FUNC1(stdout, CUSTOM_LEVEL, testResult, g_params, buf.srcSize);

    return 0;
}