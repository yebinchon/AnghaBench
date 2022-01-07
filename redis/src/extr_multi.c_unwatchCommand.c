
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int ok; } ;


 int CLIENT_DIRTY_CAS ;
 int addReply (TYPE_1__*,int ) ;
 TYPE_4__ shared ;
 int unwatchAllKeys (TYPE_1__*) ;

void unwatchCommand(client *c) {
    unwatchAllKeys(c);
    c->flags &= (~CLIENT_DIRTY_CAS);
    addReply(c,shared.ok);
}
