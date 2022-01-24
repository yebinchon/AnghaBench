#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  array; } ;
struct TYPE_6__ {char* proto; int protolen; long long len; int flags; int /*<<< orphan*/  type; int /*<<< orphan*/  ctx; TYPE_1__ val; } ;
typedef  TYPE_2__ RedisModuleCallReply ;

/* Variables and functions */
 int REDISMODULE_REPLYFLAG_NESTED ; 
 int REDISMODULE_REPLYFLAG_TOPARSE ; 
 int /*<<< orphan*/  REDISMODULE_REPLY_ARRAY ; 
 int /*<<< orphan*/  REDISMODULE_REPLY_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,long long*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(RedisModuleCallReply *reply) {
    char *proto = reply->proto;
    char *p = FUNC1(proto+1,'\r');
    long long arraylen, j;

    FUNC2(proto+1,p-proto-1,&arraylen);
    p += 2;

    if (arraylen == -1) {
        reply->protolen = p-proto;
        reply->type = REDISMODULE_REPLY_NULL;
        return;
    }

    reply->val.array = FUNC3(sizeof(RedisModuleCallReply)*arraylen);
    reply->len = arraylen;
    for (j = 0; j < arraylen; j++) {
        RedisModuleCallReply *ele = reply->val.array+j;
        ele->flags = REDISMODULE_REPLYFLAG_NESTED |
                     REDISMODULE_REPLYFLAG_TOPARSE;
        ele->proto = p;
        ele->ctx = reply->ctx;
        FUNC0(ele);
        p += ele->protolen;
    }
    reply->protolen = p-proto;
    reply->type = REDISMODULE_REPLY_ARRAY;
}