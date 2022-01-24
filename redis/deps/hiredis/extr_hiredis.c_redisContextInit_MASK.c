#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  redisOptions ;
struct TYPE_5__ {int /*<<< orphan*/ * reader; int /*<<< orphan*/ * obuf; int /*<<< orphan*/  fd; int /*<<< orphan*/ * funcs; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  REDIS_INVALID_FD ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  redisContextDefaultFuncs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static redisContext *FUNC4(const redisOptions *options) {
    redisContext *c;

    c = FUNC0(1, sizeof(*c));
    if (c == NULL)
        return NULL;

    c->funcs = &redisContextDefaultFuncs;
    c->obuf = FUNC3();
    c->reader = FUNC2();
    c->fd = REDIS_INVALID_FD;

    if (c->obuf == NULL || c->reader == NULL) {
        FUNC1(c);
        return NULL;
    }
    (void)options; /* options are used in other functions */
    return c;
}