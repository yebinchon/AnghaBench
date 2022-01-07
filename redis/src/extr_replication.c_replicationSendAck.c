
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int reploff; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {TYPE_1__* master; } ;


 int CLIENT_MASTER_FORCE_REPLY ;
 int addReplyArrayLen (TYPE_1__*,int) ;
 int addReplyBulkCString (TYPE_1__*,char*) ;
 int addReplyBulkLongLong (TYPE_1__*,int ) ;
 TYPE_2__ server ;

void replicationSendAck(void) {
    client *c = server.master;

    if (c != ((void*)0)) {
        c->flags |= CLIENT_MASTER_FORCE_REPLY;
        addReplyArrayLen(c,3);
        addReplyBulkCString(c,"REPLCONF");
        addReplyBulkCString(c,"ACK");
        addReplyBulkLongLong(c,c->reploff);
        c->flags &= ~CLIENT_MASTER_FORCE_REPLY;
    }
}
