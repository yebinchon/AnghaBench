#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_slab_pool_t ;
struct TYPE_7__ {TYPE_3__* data; } ;
struct TYPE_6__ {TYPE_3__* data; } ;
struct TYPE_8__ {TYPE_2__ content; TYPE_1__ name; struct TYPE_8__* pid; } ;
typedef  TYPE_3__ ngx_dyups_msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC1(ngx_slab_pool_t *shpool, ngx_dyups_msg_t *msg)
{
    if (msg->pid) {
        FUNC0(shpool, msg->pid);
    }

    if (msg->name.data) {
        FUNC0(shpool, msg->name.data);
    }

    if (msg->content.data) {
        FUNC0(shpool, msg->content.data);
    }

    FUNC0(shpool, msg);
}