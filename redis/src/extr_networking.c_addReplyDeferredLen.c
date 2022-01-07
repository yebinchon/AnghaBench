
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reply; } ;
typedef TYPE_1__ client ;


 scalar_t__ C_OK ;
 int listAddNodeTail (int ,int *) ;
 void* listLast (int ) ;
 scalar_t__ prepareClientToWrite (TYPE_1__*) ;

void *addReplyDeferredLen(client *c) {



    if (prepareClientToWrite(c) != C_OK) return ((void*)0);
    listAddNodeTail(c->reply,((void*)0));
    return listLast(c->reply);
}
