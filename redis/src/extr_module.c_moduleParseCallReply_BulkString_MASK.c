#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* str; } ;
struct TYPE_5__ {char* proto; int protolen; long long len; int /*<<< orphan*/  type; TYPE_1__ val; } ;
typedef  TYPE_2__ RedisModuleCallReply ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_REPLY_NULL ; 
 int /*<<< orphan*/  REDISMODULE_REPLY_STRING ; 
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,long long*) ; 

void FUNC2(RedisModuleCallReply *reply) {
    char *proto = reply->proto;
    char *p = FUNC0(proto+1,'\r');
    long long bulklen;

    FUNC1(proto+1,p-proto-1,&bulklen);
    if (bulklen == -1) {
        reply->protolen = p-proto+2;
        reply->type = REDISMODULE_REPLY_NULL;
    } else {
        reply->val.str = p+2;
        reply->len = bulklen;
        reply->protolen = p-proto+2+bulklen+2;
        reply->type = REDISMODULE_REPLY_STRING;
    }
}