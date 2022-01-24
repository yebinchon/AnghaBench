#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; int* proto; } ;
typedef  TYPE_1__ RedisModuleCallReply ;

/* Variables and functions */
 int REDISMODULE_REPLYFLAG_TOPARSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(RedisModuleCallReply *reply) {
    if (!(reply->flags & REDISMODULE_REPLYFLAG_TOPARSE)) return;
    reply->flags &= ~REDISMODULE_REPLYFLAG_TOPARSE;

    switch(reply->proto[0]) {
    case ':': FUNC2(reply); break;
    case '$': FUNC1(reply); break;
    case '-': /* handled by next item. */
    case '+': FUNC3(reply); break;
    case '*': FUNC0(reply); break;
    }
}