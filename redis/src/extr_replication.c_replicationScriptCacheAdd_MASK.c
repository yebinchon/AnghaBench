#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  listNode ;
struct TYPE_2__ {scalar_t__ repl_scriptcache_size; int /*<<< orphan*/  repl_scriptcache_fifo; int /*<<< orphan*/  repl_scriptcache_dict; } ;

/* Variables and functions */
 int DICT_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(sds sha1) {
    int retval;
    sds key = FUNC7(sha1);

    /* Evict oldest. */
    if (FUNC5(server.repl_scriptcache_fifo) == server.repl_scriptcache_size)
    {
        listNode *ln = FUNC4(server.repl_scriptcache_fifo);
        sds oldest = FUNC6(ln);

        retval = FUNC1(server.repl_scriptcache_dict,oldest);
        FUNC8(retval == DICT_OK);
        FUNC3(server.repl_scriptcache_fifo,ln);
    }

    /* Add current. */
    retval = FUNC0(server.repl_scriptcache_dict,key,NULL);
    FUNC2(server.repl_scriptcache_fifo,key);
    FUNC8(retval == DICT_OK);
}