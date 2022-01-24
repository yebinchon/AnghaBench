#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_7__ {int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int CLIENT_BLOCKED ; 
 int CLIENT_CLOSE_AFTER_REPLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(void) {
    listNode *ln;
    listIter li;

    FUNC3(server.clients,&li);
    while((ln = FUNC1(&li))) {
        client *c = FUNC2(ln);

        if (c->flags & CLIENT_BLOCKED) {
            FUNC0(c,FUNC4(
                "-UNBLOCKED force unblock from blocking operation, "
                "instance state changed (master -> replica?)\r\n"));
            FUNC5(c);
            c->flags |= CLIENT_CLOSE_AFTER_REPLY;
        }
    }
}