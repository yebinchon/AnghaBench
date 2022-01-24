#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_6__ {int /*<<< orphan*/  clients_to_close; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_CLOSE_ASAP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ server ; 

void FUNC5(void) {
    while (FUNC3(server.clients_to_close)) {
        listNode *ln = FUNC2(server.clients_to_close);
        client *c = FUNC4(ln);

        c->flags &= ~CLIENT_CLOSE_ASAP;
        FUNC0(c);
        FUNC1(server.clients_to_close,ln);
    }
}