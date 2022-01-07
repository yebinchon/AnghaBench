
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int conn; } ;
typedef TYPE_1__ client ;


 int CLIENT_LUA ;
 int CLIENT_MASTER ;
 int CLIENT_MASTER_FORCE_REPLY ;
 int CLIENT_MODULE ;
 int CLIENT_REPLY_OFF ;
 int CLIENT_REPLY_SKIP ;
 int C_ERR ;
 int C_OK ;
 int clientHasPendingReplies (TYPE_1__*) ;
 int clientInstallWriteHandler (TYPE_1__*) ;

int prepareClientToWrite(client *c) {


    if (c->flags & (CLIENT_LUA|CLIENT_MODULE)) return C_OK;


    if (c->flags & (CLIENT_REPLY_OFF|CLIENT_REPLY_SKIP)) return C_ERR;



    if ((c->flags & CLIENT_MASTER) &&
        !(c->flags & CLIENT_MASTER_FORCE_REPLY)) return C_ERR;

    if (!c->conn) return C_ERR;



    if (!clientHasPendingReplies(c)) clientInstallWriteHandler(c);


    return C_OK;
}
