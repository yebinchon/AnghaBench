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
typedef  scalar_t__ uint32_t ;
struct server {scalar_t__ ns_conn_q; int /*<<< orphan*/  s_conn_q; } ;
struct array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct array*) ; 
 scalar_t__ FUNC3 (struct array*) ; 
 struct server* FUNC4 (struct array*) ; 

void
FUNC5(struct array *server)
{
    uint32_t i, nserver;

    for (i = 0, nserver = FUNC3(server); i < nserver; i++) {
        struct server *s;

        s = FUNC4(server);
        FUNC0(FUNC1(&s->s_conn_q) && s->ns_conn_q == 0);
    }
    FUNC2(server);
}