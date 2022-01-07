
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* key; } ;
typedef int RedisModuleString ;
typedef TYPE_1__ RedisModuleIO ;



const RedisModuleString *RM_GetKeyNameFromIO(RedisModuleIO *io) {
    return io->key;
}
