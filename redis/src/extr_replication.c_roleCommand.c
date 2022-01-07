
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
typedef int ip ;
struct TYPE_16__ {char* slave_ip; scalar_t__ replstate; int repl_ack_off; int slave_listening_port; int conn; } ;
typedef TYPE_3__ client ;
struct TYPE_17__ {char* masterhost; int master_repl_offset; int masterport; int repl_state; TYPE_1__* master; int slaves; } ;
struct TYPE_14__ {int reploff; } ;


 int NET_IP_STR_LEN ;





 scalar_t__ SLAVE_STATE_ONLINE ;
 int addReplyArrayLen (TYPE_3__*,int) ;
 int addReplyBulkCBuffer (TYPE_3__*,char*,int) ;
 int addReplyBulkCString (TYPE_3__*,char*) ;
 int addReplyBulkLongLong (TYPE_3__*,int ) ;
 void* addReplyDeferredLen (TYPE_3__*) ;
 int addReplyLongLong (TYPE_3__*,int) ;
 int connPeerToString (int ,char*,int,int *) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 TYPE_5__ server ;
 int setDeferredArrayLen (TYPE_3__*,void*,int) ;
 scalar_t__ slaveIsInHandshakeState () ;

void roleCommand(client *c) {
    if (server.masterhost == ((void*)0)) {
        listIter li;
        listNode *ln;
        void *mbcount;
        int slaves = 0;

        addReplyArrayLen(c,3);
        addReplyBulkCBuffer(c,"master",6);
        addReplyLongLong(c,server.master_repl_offset);
        mbcount = addReplyDeferredLen(c);
        listRewind(server.slaves,&li);
        while((ln = listNext(&li))) {
            client *slave = ln->value;
            char ip[NET_IP_STR_LEN], *slaveip = slave->slave_ip;

            if (slaveip[0] == '\0') {
                if (connPeerToString(slave->conn,ip,sizeof(ip),((void*)0)) == -1)
                    continue;
                slaveip = ip;
            }
            if (slave->replstate != SLAVE_STATE_ONLINE) continue;
            addReplyArrayLen(c,3);
            addReplyBulkCString(c,slaveip);
            addReplyBulkLongLong(c,slave->slave_listening_port);
            addReplyBulkLongLong(c,slave->repl_ack_off);
            slaves++;
        }
        setDeferredArrayLen(c,mbcount,slaves);
    } else {
        char *slavestate = ((void*)0);

        addReplyArrayLen(c,5);
        addReplyBulkCBuffer(c,"slave",5);
        addReplyBulkCString(c,server.masterhost);
        addReplyLongLong(c,server.masterport);
        if (slaveIsInHandshakeState()) {
            slavestate = "handshake";
        } else {
            switch(server.repl_state) {
            case 129: slavestate = "none"; break;
            case 132: slavestate = "connect"; break;
            case 130: slavestate = "connecting"; break;
            case 128: slavestate = "sync"; break;
            case 131: slavestate = "connected"; break;
            default: slavestate = "unknown"; break;
            }
        }
        addReplyBulkCString(c,slavestate);
        addReplyLongLong(c,server.master ? server.master->reploff : -1);
    }
}
