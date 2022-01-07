
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int conn; } ;
typedef TYPE_1__ client ;


 int CLIENT_PROTECTED ;
 scalar_t__ clientHasPendingReplies (TYPE_1__*) ;
 int clientInstallWriteHandler (TYPE_1__*) ;
 int connSetReadHandler (int ,int ) ;
 int readQueryFromClient ;

void unprotectClient(client *c) {
    if (c->flags & CLIENT_PROTECTED) {
        c->flags &= ~CLIENT_PROTECTED;
        connSetReadHandler(c->conn,readQueryFromClient);
        if (clientHasPendingReplies(c)) clientInstallWriteHandler(c);
    }
}
