#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_7__ {scalar_t__ replstate; } ;
typedef  TYPE_2__ client ;
struct TYPE_8__ {scalar_t__ repl_backlog; } ;

/* Variables and functions */
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 scalar_t__ FUNC2 (char) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_3__ server ; 

void FUNC6(list *slaves, char *buf, size_t buflen) {
    listNode *ln;
    listIter li;

    /* Debugging: this is handy to see the stream sent from master
     * to slaves. Disabled with if(0). */
    if (0) {
        FUNC5("%zu:",buflen);
        for (size_t j = 0; j < buflen; j++) {
            FUNC5("%c", FUNC2(buf[j]) ? buf[j] : '.');
        }
        FUNC5("\n");
    }

    if (server.repl_backlog) FUNC1(buf,buflen);
    FUNC4(slaves,&li);
    while((ln = FUNC3(&li))) {
        client *slave = ln->value;

        /* Don't feed slaves that are still waiting for BGSAVE to start. */
        if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) continue;
        FUNC0(slave,buf,buflen);
    }
}