
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conn; int flags; } ;
typedef TYPE_1__ client ;


 int CLIENT_PROTECTED ;
 int connSetReadHandler (int ,int *) ;
 int connSetWriteHandler (int ,int *) ;

void protectClient(client *c) {
    c->flags |= CLIENT_PROTECTED;
    connSetReadHandler(c->conn,((void*)0));
    connSetWriteHandler(c->conn,((void*)0));
}
