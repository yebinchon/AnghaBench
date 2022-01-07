
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int rax; } ;
typedef TYPE_1__ RedisModuleDict ;


 int raxSize (int ) ;

uint64_t RM_DictSize(RedisModuleDict *d) {
    return raxSize(d->rax);
}
