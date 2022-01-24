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
struct TYPE_6__ {scalar_t__ type; char* str; int elements; TYPE_1__** element; } ;
typedef  TYPE_2__ redisReply ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 scalar_t__ REDIS_REPLY_ARRAY ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 scalar_t__ REDIS_REPLY_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static redisReply *FUNC5(unsigned long long *it) {
    redisReply *reply = FUNC3(context, "SCAN %llu", *it);

    /* Handle any error conditions */
    if(reply == NULL) {
        FUNC2(stderr, "\nI/O error\n");
        FUNC1(1);
    } else if(reply->type == REDIS_REPLY_ERROR) {
        FUNC2(stderr, "SCAN error: %s\n", reply->str);
        FUNC1(1);
    } else if(reply->type != REDIS_REPLY_ARRAY) {
        FUNC2(stderr, "Non ARRAY response from SCAN!\n");
        FUNC1(1);
    } else if(reply->elements != 2) {
        FUNC2(stderr, "Invalid element count from SCAN!\n");
        FUNC1(1);
    }

    /* Validate our types are correct */
    FUNC0(reply->element[0]->type == REDIS_REPLY_STRING);
    FUNC0(reply->element[1]->type == REDIS_REPLY_ARRAY);

    /* Update iterator */
    *it = FUNC4(reply->element[0]->str, NULL, 10);

    return reply;
}