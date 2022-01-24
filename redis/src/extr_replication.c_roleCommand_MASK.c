#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  ip ;
struct TYPE_16__ {char* slave_ip; scalar_t__ replstate; int /*<<< orphan*/  repl_ack_off; int /*<<< orphan*/  slave_listening_port; int /*<<< orphan*/  conn; } ;
typedef  TYPE_3__ client ;
struct TYPE_17__ {char* masterhost; int master_repl_offset; int masterport; int repl_state; TYPE_1__* master; int /*<<< orphan*/  slaves; } ;
struct TYPE_14__ {int reploff; } ;

/* Variables and functions */
 int NET_IP_STR_LEN ; 
#define  REPL_STATE_CONNECT 132 
#define  REPL_STATE_CONNECTED 131 
#define  REPL_STATE_CONNECTING 130 
#define  REPL_STATE_NONE 129 
#define  REPL_STATE_TRANSFER 128 
 scalar_t__ SLAVE_STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,void*,int) ; 
 scalar_t__ FUNC10 () ; 

void FUNC11(client *c) {
    if (server.masterhost == NULL) {
        listIter li;
        listNode *ln;
        void *mbcount;
        int slaves = 0;

        FUNC0(c,3);
        FUNC1(c,"master",6);
        FUNC5(c,server.master_repl_offset);
        mbcount = FUNC4(c);
        FUNC8(server.slaves,&li);
        while((ln = FUNC7(&li))) {
            client *slave = ln->value;
            char ip[NET_IP_STR_LEN], *slaveip = slave->slave_ip;

            if (slaveip[0] == '\0') {
                if (FUNC6(slave->conn,ip,sizeof(ip),NULL) == -1)
                    continue;
                slaveip = ip;
            }
            if (slave->replstate != SLAVE_STATE_ONLINE) continue;
            FUNC0(c,3);
            FUNC2(c,slaveip);
            FUNC3(c,slave->slave_listening_port);
            FUNC3(c,slave->repl_ack_off);
            slaves++;
        }
        FUNC9(c,mbcount,slaves);
    } else {
        char *slavestate = NULL;

        FUNC0(c,5);
        FUNC1(c,"slave",5);
        FUNC2(c,server.masterhost);
        FUNC5(c,server.masterport);
        if (FUNC10()) {
            slavestate = "handshake";
        } else {
            switch(server.repl_state) {
            case REPL_STATE_NONE: slavestate = "none"; break;
            case REPL_STATE_CONNECT: slavestate = "connect"; break;
            case REPL_STATE_CONNECTING: slavestate = "connecting"; break;
            case REPL_STATE_TRANSFER: slavestate = "sync"; break;
            case REPL_STATE_CONNECTED: slavestate = "connected"; break;
            default: slavestate = "unknown"; break;
            }
        }
        FUNC2(c,slavestate);
        FUNC5(c,server.master ? server.master->reploff : -1);
    }
}