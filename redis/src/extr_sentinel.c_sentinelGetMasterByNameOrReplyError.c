
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sentinelRedisInstance ;
struct TYPE_4__ {int ptr; } ;
typedef TYPE_1__ robj ;
typedef int client ;
struct TYPE_5__ {int masters; } ;


 int addReplyError (int *,char*) ;
 int * dictFetchValue (int ,int ) ;
 TYPE_3__ sentinel ;

sentinelRedisInstance *sentinelGetMasterByNameOrReplyError(client *c,
                        robj *name)
{
    sentinelRedisInstance *ri;

    ri = dictFetchValue(sentinel.masters,name->ptr);
    if (!ri) {
        addReplyError(c,"No such master with that name");
        return ((void*)0);
    }
    return ri;
}
