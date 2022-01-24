#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sigint_event; int /*<<< orphan*/  events; int /*<<< orphan*/  sigterm_event; } ;
typedef  TYPE_1__ RemoteServer ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(RemoteServer *s) {
        int r;

        FUNC0(s);

        FUNC1(FUNC3(SIG_SETMASK, NULL, SIGINT, SIGTERM, -1) >= 0);

        r = FUNC2(s->events, &s->sigterm_event, SIGTERM, NULL, s);
        if (r < 0)
                return r;

        r = FUNC2(s->events, &s->sigint_event, SIGINT, NULL, s);
        if (r < 0)
                return r;

        return 0;
}