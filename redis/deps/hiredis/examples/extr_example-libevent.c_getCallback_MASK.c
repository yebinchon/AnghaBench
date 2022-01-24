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
struct TYPE_5__ {char* str; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_6__ {char* errstr; } ;
typedef  TYPE_2__ redisAsyncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void FUNC2(redisAsyncContext *c, void *r, void *privdata) {
    redisReply *reply = r;
    if (reply == NULL) {
        if (c->errstr) {
            FUNC0("errstr: %s\n", c->errstr);
        }
        return;
    }
    FUNC0("argv[%s]: %s\n", (char*)privdata, reply->str);

    /* Disconnect after receiving the reply to GET */
    FUNC1(c);
}