#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  llstr ;
struct TYPE_9__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_10__ {scalar_t__ replstate; } ;
typedef  TYPE_2__ client ;
typedef  int /*<<< orphan*/  aux ;
struct TYPE_12__ {int slaveseldb; int /*<<< orphan*/ * repl_backlog; int /*<<< orphan*/ * masterhost; } ;
struct TYPE_11__ {int /*<<< orphan*/ ** select; } ;

/* Variables and functions */
 int LONG_STR_SIZE ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int PROTO_SHARED_SELECT_CMDS ; 
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int,long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 TYPE_3__ shared ; 
 long FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(list *slaves, int dictid, robj **argv, int argc) {
    listNode *ln;
    listIter li;
    int j, len;
    char llstr[LONG_STR_SIZE];

    /* If the instance is not a top level master, return ASAP: we'll just proxy
     * the stream of data we receive from our master instead, in order to
     * propagate *identical* replication stream. In this way this slave can
     * advertise the same replication ID as the master (since it shares the
     * master replication history and has the same backlog and offsets). */
    if (server.masterhost != NULL) return;

    /* If there aren't slaves, and there is no backlog buffer to populate,
     * we can return ASAP. */
    if (server.repl_backlog == NULL && FUNC7(slaves) == 0) return;

    /* We can't have slaves attached and no backlog. */
    FUNC13(!(FUNC7(slaves) != 0 && server.repl_backlog == NULL));

    /* Send SELECT command to every slave if needed. */
    if (server.slaveseldb != dictid) {
        robj *selectcmd;

        /* For a few DBs we have pre-computed SELECT command. */
        if (dictid >= 0 && dictid < PROTO_SHARED_SELECT_CMDS) {
            selectcmd = shared.select[dictid];
        } else {
            int dictid_len;

            dictid_len = FUNC10(llstr,sizeof(llstr),dictid);
            selectcmd = FUNC3(OBJ_STRING,
                FUNC11(FUNC12(),
                "*2\r\n$6\r\nSELECT\r\n$%d\r\n%s\r\n",
                dictid_len, llstr));
        }

        /* Add the SELECT command into the backlog. */
        if (server.repl_backlog) FUNC6(selectcmd);

        /* Send it to slaves. */
        FUNC9(slaves,&li);
        while((ln = FUNC8(&li))) {
            client *slave = ln->value;
            if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) continue;
            FUNC0(slave,selectcmd);
        }

        if (dictid < 0 || dictid >= PROTO_SHARED_SELECT_CMDS)
            FUNC4(selectcmd);
    }
    server.slaveseldb = dictid;

    /* Write the command to the replication backlog if any. */
    if (server.repl_backlog) {
        char aux[LONG_STR_SIZE+3];

        /* Add the multi bulk reply length. */
        aux[0] = '*';
        len = FUNC10(aux+1,sizeof(aux)-1,argc);
        aux[len+1] = '\r';
        aux[len+2] = '\n';
        FUNC5(aux,len+3);

        for (j = 0; j < argc; j++) {
            long objlen = FUNC14(argv[j]);

            /* We need to feed the buffer with the object as a bulk reply
             * not just as a plain string, so create the $..CRLF payload len
             * and add the final CRLF */
            aux[0] = '$';
            len = FUNC10(aux+1,sizeof(aux)-1,objlen);
            aux[len+1] = '\r';
            aux[len+2] = '\n';
            FUNC5(aux,len+3);
            FUNC6(argv[j]);
            FUNC5(aux+len+1,2);
        }
    }

    /* Write the command to every slave. */
    FUNC9(slaves,&li);
    while((ln = FUNC8(&li))) {
        client *slave = ln->value;

        /* Don't feed slaves that are still waiting for BGSAVE to start. */
        if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) continue;

        /* Feed slaves that are waiting for the initial SYNC (so these commands
         * are queued in the output buffer until the initial SYNC completes),
         * or are already in sync with the master. */

        /* Add the multi bulk length. */
        FUNC1(slave,argc);

        /* Finally any additional argument that was not stored inside the
         * static buffer if any (from j to argc). */
        for (j = 0; j < argc; j++)
            FUNC2(slave,argv[j]);
    }
}