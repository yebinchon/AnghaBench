#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  lru_index; scalar_t__ in_lru; int /*<<< orphan*/  pid; } ;
struct TYPE_13__ {int /*<<< orphan*/  client_contexts_lru; int /*<<< orphan*/  client_contexts; } ;
typedef  TYPE_1__ Server ;
typedef  TYPE_2__ ClientContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ClientContext* FUNC7(Server *s, ClientContext *c) {
        FUNC1(s);

        if (!c)
                return NULL;

        FUNC2(FUNC4(s->client_contexts, FUNC0(c->pid)) == c);

        if (c->in_lru)
                FUNC2(FUNC6(s->client_contexts_lru, c, &c->lru_index) >= 0);

        FUNC3(s, c);

        return FUNC5(c);
}