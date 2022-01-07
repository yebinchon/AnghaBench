
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_6__ {int ptr; } ;


 int SENTINEL_HELLO_CHANNEL ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int sdslen (int ) ;
 int sentinelProcessHelloMessage (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

void sentinelPublishCommand(client *c) {
    if (strcmp(c->argv[1]->ptr,SENTINEL_HELLO_CHANNEL)) {
        addReplyError(c, "Only HELLO messages are accepted by Sentinel instances.");
        return;
    }
    sentinelProcessHelloMessage(c->argv[2]->ptr,sdslen(c->argv[2]->ptr));
    addReplyLongLong(c,1);
}
