#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; int len; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  clusterManagerNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(clusterManagerNode *n,
                                         redisReply *r, char **err)
{
    int is_err = 0;
    if (!r || (is_err = (r->type == REDIS_REPLY_ERROR))) {
        if (is_err) {
            if (err != NULL) {
                *err = FUNC2((r->len + 1) * sizeof(char));
                FUNC1(*err, r->str);
            } else FUNC0(n, r->str);
        }
        return 0;
    }
    return 1;
}