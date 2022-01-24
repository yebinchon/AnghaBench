#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int stopping; int /*<<< orphan*/  user; scalar_t__ seat; int /*<<< orphan*/  timer_event_source; int /*<<< orphan*/  started; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(Session *s, bool force) {
        int r;

        FUNC0(s);

        /* This is called whenever we begin with tearing down a session record. It's called in four cases: explicit API
         * request via the bus (either directly for the session object or for the seat or user object this session
         * belongs to; 'force' is true), or due to automatic GC (i.e. scope vanished; 'force' is false), or because the
         * session FIFO saw an EOF ('force' is false), or because the release timer hit ('force' is false). */

        if (!s->user)
                return -ESTALE;
        if (!s->started)
                return 0;
        if (s->stopping)
                return 0;

        s->timer_event_source = FUNC1(s->timer_event_source);

        if (s->seat)
                FUNC2(s->seat, s);

        /* We are going down, don't care about FIFOs anymore */
        FUNC3(s);

        /* Kill cgroup */
        r = FUNC5(s, force);

        s->stopping = true;

        FUNC6(s->user);

        FUNC4(s);
        FUNC7(s->user);

        return r;
}