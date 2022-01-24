#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
struct TYPE_8__ {int flags; scalar_t__ querybuf; } ;
typedef  TYPE_2__ client ;
struct TYPE_9__ {int /*<<< orphan*/  unblocked_clients; } ;

/* Variables and functions */
 int CLIENT_BLOCKED ; 
 int CLIENT_UNBLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void) {
    listNode *ln;
    client *c;

    while (FUNC2(server.unblocked_clients)) {
        ln = FUNC1(server.unblocked_clients);
        FUNC5(ln != NULL);
        c = ln->value;
        FUNC0(server.unblocked_clients,ln);
        c->flags &= ~CLIENT_UNBLOCKED;

        /* Process remaining data in the input buffer, unless the client
         * is blocked again. Actually processInputBuffer() checks that the
         * client is not blocked before to proceed, but things may change and
         * the code is conceptually more correct this way. */
        if (!(c->flags & CLIENT_BLOCKED)) {
            if (c->querybuf && FUNC4(c->querybuf) > 0) {
                FUNC3(c);
            }
        }
    }
}