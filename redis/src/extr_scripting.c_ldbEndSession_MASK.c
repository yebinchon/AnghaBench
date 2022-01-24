#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ active; scalar_t__ lines; int /*<<< orphan*/  src; int /*<<< orphan*/  conn; scalar_t__ forked; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_CLOSE_AFTER_REPLY ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ ldb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC9(client *c) {
    /* Emit the remaining logs and an <endsession> mark. */
    FUNC3(FUNC6("<endsession>"));
    FUNC4();

    /* If it's a fork()ed session, we just exit. */
    if (ldb.forked) {
        FUNC8(c,0);
        FUNC7(LL_WARNING,"Lua debugging session child exiting");
        FUNC2(0);
    } else {
        FUNC7(LL_WARNING,
            "Redis synchronous debugging eval session ended");
    }

    /* Otherwise let's restore client's state. */
    FUNC0(ldb.conn);
    FUNC1(ldb.conn,0);

    /* Close the client connectin after sending the final EVAL reply
     * in order to signal the end of the debugging session. */
    c->flags |= CLIENT_CLOSE_AFTER_REPLY;

    /* Cleanup. */
    FUNC5(ldb.src,ldb.lines);
    ldb.lines = 0;
    ldb.active = 0;
}