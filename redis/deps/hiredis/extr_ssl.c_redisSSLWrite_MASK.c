#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t lastLen; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ redisSSLContext ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  obuf; TYPE_1__* privdata; } ;
typedef  TYPE_2__ redisContext ;

/* Variables and functions */
 int REDIS_BLOCK ; 
 int /*<<< orphan*/  REDIS_ERR_IO ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(redisContext *c) {
    redisSSLContext *rssl = c->privdata;

    size_t len = rssl->lastLen ? rssl->lastLen : FUNC4(c->obuf);
    int rv = FUNC1(rssl->ssl, c->obuf, len);

    if (rv > 0) {
        rssl->lastLen = 0;
    } else if (rv < 0) {
        rssl->lastLen = len;

        int err = FUNC0(rssl->ssl, rv);
        if ((c->flags & REDIS_BLOCK) == 0 && FUNC3(rssl, err)) {
            return 0;
        } else {
            FUNC2(c, REDIS_ERR_IO, NULL);
            return -1;
        }
    }
    return rv;
}