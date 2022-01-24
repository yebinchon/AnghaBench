#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ nginx_stash ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int ngx_perl_term ; 
 int /*<<< orphan*/  perl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ngx_cycle_t *cycle)
{
#if (NGX_HAVE_PERL_MULTIPLICITY)

    /*
     * the master exit hook is run before global pool cleanup,
     * therefore just set flag here
     */

    ngx_perl_term = 1;

#else

    if (nginx_stash) {
        FUNC1(NGX_LOG_DEBUG_HTTP, cycle->log, 0, "perl term");

        (void) FUNC2(perl);

        FUNC3(perl);

        FUNC0();
    }

#endif
}