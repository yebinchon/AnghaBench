
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* array; } ;
struct TYPE_6__ {int flags; scalar_t__ type; size_t len; scalar_t__ proto; TYPE_1__ val; } ;
typedef TYPE_2__ RedisModuleCallReply ;


 int REDISMODULE_REPLYFLAG_NESTED ;
 int REDISMODULE_REPLYFLAG_TOPARSE ;
 scalar_t__ REDISMODULE_REPLY_ARRAY ;
 int sdsfree (scalar_t__) ;
 int zfree (TYPE_2__*) ;

void RM_FreeCallReply_Rec(RedisModuleCallReply *reply, int freenested){



    if (!freenested && reply->flags & REDISMODULE_REPLYFLAG_NESTED) return;

    if (!(reply->flags & REDISMODULE_REPLYFLAG_TOPARSE)) {
        if (reply->type == REDISMODULE_REPLY_ARRAY) {
            size_t j;
            for (j = 0; j < reply->len; j++)
                RM_FreeCallReply_Rec(reply->val.array+j,1);
            zfree(reply->val.array);
        }
    }





    if (!(reply->flags & REDISMODULE_REPLYFLAG_NESTED)) {
        if (reply->proto) sdsfree(reply->proto);
        zfree(reply);
    }
}
