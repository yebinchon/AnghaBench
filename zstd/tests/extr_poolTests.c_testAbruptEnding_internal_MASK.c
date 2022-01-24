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
struct TYPE_4__ {scalar_t__ val; } ;
typedef  TYPE_1__ abruptEndCanary_t ;
typedef  int /*<<< orphan*/  POOL_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  waitIncFn ; 

__attribute__((used)) static int FUNC6(abruptEndCanary_t test)
{
    int const nbWaits = 16;

    POOL_ctx* const ctx = FUNC3(3 /*numThreads*/, nbWaits /*queueSize*/);
    FUNC1(ctx);
    test.val = 0;

    {   int i;
        for (i=0; i<nbWaits; i++)
            FUNC2(ctx, &waitIncFn, &test);  /* all jobs pushed into queue */
    }
    FUNC0( FUNC5(ctx, 1 /*numThreads*/) , 0 );   /* downsize numThreads, to try to break end condition */

    FUNC4(ctx);  /* must finish all jobs in queue before giving back control */
    FUNC0(test.val, nbWaits);
    return 0;
}