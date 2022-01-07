
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disconnect_callback; } ;
typedef int RedisModuleDisconnectFunc ;
typedef TYPE_1__ RedisModuleBlockedClient ;



void RM_SetDisconnectCallback(RedisModuleBlockedClient *bc, RedisModuleDisconnectFunc callback) {
    bc->disconnect_callback = callback;
}
