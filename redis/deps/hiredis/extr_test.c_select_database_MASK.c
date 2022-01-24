#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; scalar_t__ integer; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  redisContext ;

/* Variables and functions */
 scalar_t__ REDIS_REPLY_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static redisContext *FUNC5(redisContext *c) {
    redisReply *reply;

    /* Switch to DB 9 for testing, now that we know we can chat. */
    reply = FUNC4(c,"SELECT 9");
    FUNC0(reply != NULL);
    FUNC2(reply);

    /* Make sure the DB is emtpy */
    reply = FUNC4(c,"DBSIZE");
    FUNC0(reply != NULL);
    if (reply->type == REDIS_REPLY_INTEGER && reply->integer == 0) {
        /* Awesome, DB 9 is empty and we can continue. */
        FUNC2(reply);
    } else {
        FUNC3("Database #9 is not empty, test can not continue\n");
        FUNC1(1);
    }

    return c;
}