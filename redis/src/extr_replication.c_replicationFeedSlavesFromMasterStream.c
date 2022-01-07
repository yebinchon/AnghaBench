
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_7__ {scalar_t__ replstate; } ;
typedef TYPE_2__ client ;
struct TYPE_8__ {scalar_t__ repl_backlog; } ;


 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ;
 int addReplyProto (TYPE_2__*,char*,size_t) ;
 int feedReplicationBacklog (char*,size_t) ;
 scalar_t__ isprint (char) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 int printf (char*,...) ;
 TYPE_3__ server ;

void replicationFeedSlavesFromMasterStream(list *slaves, char *buf, size_t buflen) {
    listNode *ln;
    listIter li;



    if (0) {
        printf("%zu:",buflen);
        for (size_t j = 0; j < buflen; j++) {
            printf("%c", isprint(buf[j]) ? buf[j] : '.');
        }
        printf("\n");
    }

    if (server.repl_backlog) feedReplicationBacklog(buf,buflen);
    listRewind(slaves,&li);
    while((ln = listNext(&li))) {
        client *slave = ln->value;


        if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) continue;
        addReplyProto(slave,buf,buflen);
    }
}
