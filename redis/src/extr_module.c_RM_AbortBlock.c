
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * disconnect_callback; int * reply_callback; } ;
typedef TYPE_1__ RedisModuleBlockedClient ;


 int RM_UnblockClient (TYPE_1__*,int *) ;

int RM_AbortBlock(RedisModuleBlockedClient *bc) {
    bc->reply_callback = ((void*)0);
    bc->disconnect_callback = ((void*)0);
    return RM_UnblockClient(bc,((void*)0));
}
