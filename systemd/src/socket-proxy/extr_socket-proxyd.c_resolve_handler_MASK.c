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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  resolve_query; } ;
typedef  TYPE_1__ sd_resolve_query ;
typedef  TYPE_1__ Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_resolve_query *q, int ret, const struct addrinfo *ai, Connection *c) {
        FUNC0(q);
        FUNC0(c);

        if (ret != 0) {
                FUNC4("Failed to resolve host: %s", FUNC3(ret));
                goto fail;
        }

        c->resolve_query = FUNC5(c->resolve_query);

        return FUNC2(c, ai->ai_addr, ai->ai_addrlen);

fail:
        FUNC1(c);
        return 0; /* ignore errors, continue serving */
}