#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_6__ {int /*<<< orphan*/ * auth; int /*<<< orphan*/ * user; } ;

/* Variables and functions */
 int REDIS_ERR ; 
 int REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 TYPE_4__ config ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(void) {
    redisReply *reply;
    if (config.auth == NULL) return REDIS_OK;

    if (config.user == NULL)
        reply = FUNC2(context,"AUTH %s",config.auth);
    else
        reply = FUNC2(context,"AUTH %s %s",config.user,config.auth);
    if (reply != NULL) {
        if (reply->type == REDIS_REPLY_ERROR)
            FUNC0(stderr,"Warning: AUTH failed\n");
        FUNC1(reply);
        return REDIS_OK;
    }
    return REDIS_ERR;
}