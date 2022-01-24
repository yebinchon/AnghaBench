#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ name; TYPE_2__ pname; } ;
struct conf_pool {int /*<<< orphan*/  server; TYPE_2__ redis_auth; TYPE_1__ listen; TYPE_2__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_VVERB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct conf_pool*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(struct conf_pool *cp)
{
    FUNC5(&cp->name);

    FUNC5(&cp->listen.pname);
    FUNC5(&cp->listen.name);

    if (cp->redis_auth.len > 0) {
        FUNC5(&cp->redis_auth);
    }

    while (FUNC1(&cp->server) != 0) {
        FUNC3(FUNC2(&cp->server));
    }
    FUNC0(&cp->server);

    FUNC4(LOG_VVERB, "deinit conf pool %p", cp);
}