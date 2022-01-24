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
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ redisContext ;
struct TYPE_6__ {TYPE_1__ c; } ;
typedef  TYPE_2__ redisAsyncContext ;

/* Variables and functions */
 int REDIS_FREEING ; 
 int REDIS_IN_CALLBACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    c->flags |= REDIS_FREEING;
    if (!(c->flags & REDIS_IN_CALLBACK))
        FUNC0(ac);
}