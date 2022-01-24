#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  redisDb ;
struct TYPE_2__ {scalar_t__ lazyfree_lazy_server_del; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 

int FUNC2(redisDb *db, robj *key) {
    return server.lazyfree_lazy_server_del ? FUNC0(db,key) :
                                             FUNC1(db,key);
}