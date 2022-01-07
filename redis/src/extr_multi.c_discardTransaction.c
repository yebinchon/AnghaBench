
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ client ;


 int CLIENT_DIRTY_CAS ;
 int CLIENT_DIRTY_EXEC ;
 int CLIENT_MULTI ;
 int freeClientMultiState (TYPE_1__*) ;
 int initClientMultiState (TYPE_1__*) ;
 int unwatchAllKeys (TYPE_1__*) ;

void discardTransaction(client *c) {
    freeClientMultiState(c);
    initClientMultiState(c);
    c->flags &= ~(CLIENT_MULTI|CLIENT_DIRTY_CAS|CLIENT_DIRTY_EXEC);
    unwatchAllKeys(c);
}
