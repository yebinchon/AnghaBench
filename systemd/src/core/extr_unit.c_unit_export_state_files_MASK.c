#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  manager; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 

void FUNC9(Unit *u) {
        const ExecContext *c;

        FUNC2(u);

        if (!u->id)
                return;

        if (!FUNC0(u->manager))
                return;

        if (FUNC1(u->manager))
                return;

        /* Exports a couple of unit properties to /run/systemd/units/, so that journald can quickly query this data
         * from there. Ideally, journald would use IPC to query this, like everybody else, but that's hard, as long as
         * the IPC system itself and PID 1 also log to the journal.
         *
         * Note that these files really shouldn't be considered API for anyone else, as use a runtime file system as
         * IPC replacement is not compatible with today's world of file system namespaces. However, this doesn't really
         * apply to communication between the journal and systemd, as we assume that these two daemons live in the same
         * namespace at least.
         *
         * Note that some of the "files" exported here are actually symlinks and not regular files. Symlinks work
         * better for storing small bits of data, in particular as we can write them with two system calls, and read
         * them with one. */

        (void) FUNC3(u);

        c = FUNC8(u);
        if (c) {
                (void) FUNC5(u, c);
                (void) FUNC4(u, c);
                (void) FUNC7(u, c);
                (void) FUNC6(u, c);
        }
}