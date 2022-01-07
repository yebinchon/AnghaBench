
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int ok; } ;


 int CLIENT_READONLY ;
 int addReply (TYPE_1__*,int ) ;
 TYPE_2__ shared ;

void readwriteCommand(client *c) {
    c->flags &= ~CLIENT_READONLY;
    addReply(c,shared.ok);
}
