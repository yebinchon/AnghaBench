
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
typedef int llstr ;
struct TYPE_9__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_10__ {scalar_t__ replstate; } ;
typedef TYPE_2__ client ;
typedef int aux ;
struct TYPE_12__ {int slaveseldb; int * repl_backlog; int * masterhost; } ;
struct TYPE_11__ {int ** select; } ;


 int LONG_STR_SIZE ;
 int OBJ_STRING ;
 int PROTO_SHARED_SELECT_CMDS ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ;
 int addReply (TYPE_2__*,int *) ;
 int addReplyArrayLen (TYPE_2__*,int) ;
 int addReplyBulk (TYPE_2__*,int *) ;
 int * createObject (int ,int ) ;
 int decrRefCount (int *) ;
 int feedReplicationBacklog (char*,int) ;
 int feedReplicationBacklogWithObject (int *) ;
 scalar_t__ listLength (int *) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 int ll2string (char*,int,long) ;
 int sdscatprintf (int ,char*,int,char*) ;
 int sdsempty () ;
 TYPE_4__ server ;
 int serverAssert (int) ;
 TYPE_3__ shared ;
 long stringObjectLen (int *) ;

void replicationFeedSlaves(list *slaves, int dictid, robj **argv, int argc) {
    listNode *ln;
    listIter li;
    int j, len;
    char llstr[LONG_STR_SIZE];






    if (server.masterhost != ((void*)0)) return;



    if (server.repl_backlog == ((void*)0) && listLength(slaves) == 0) return;


    serverAssert(!(listLength(slaves) != 0 && server.repl_backlog == ((void*)0)));


    if (server.slaveseldb != dictid) {
        robj *selectcmd;


        if (dictid >= 0 && dictid < PROTO_SHARED_SELECT_CMDS) {
            selectcmd = shared.select[dictid];
        } else {
            int dictid_len;

            dictid_len = ll2string(llstr,sizeof(llstr),dictid);
            selectcmd = createObject(OBJ_STRING,
                sdscatprintf(sdsempty(),
                "*2\r\n$6\r\nSELECT\r\n$%d\r\n%s\r\n",
                dictid_len, llstr));
        }


        if (server.repl_backlog) feedReplicationBacklogWithObject(selectcmd);


        listRewind(slaves,&li);
        while((ln = listNext(&li))) {
            client *slave = ln->value;
            if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) continue;
            addReply(slave,selectcmd);
        }

        if (dictid < 0 || dictid >= PROTO_SHARED_SELECT_CMDS)
            decrRefCount(selectcmd);
    }
    server.slaveseldb = dictid;


    if (server.repl_backlog) {
        char aux[LONG_STR_SIZE+3];


        aux[0] = '*';
        len = ll2string(aux+1,sizeof(aux)-1,argc);
        aux[len+1] = '\r';
        aux[len+2] = '\n';
        feedReplicationBacklog(aux,len+3);

        for (j = 0; j < argc; j++) {
            long objlen = stringObjectLen(argv[j]);




            aux[0] = '$';
            len = ll2string(aux+1,sizeof(aux)-1,objlen);
            aux[len+1] = '\r';
            aux[len+2] = '\n';
            feedReplicationBacklog(aux,len+3);
            feedReplicationBacklogWithObject(argv[j]);
            feedReplicationBacklog(aux+len+1,2);
        }
    }


    listRewind(slaves,&li);
    while((ln = listNext(&li))) {
        client *slave = ln->value;


        if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) continue;






        addReplyArrayLen(slave,argc);



        for (j = 0; j < argc; j++)
            addReplyBulk(slave,argv[j]);
    }
}
