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
struct TYPE_6__ {int version; } ;
struct TYPE_7__ {TYPE_1__ r_ctx; } ;
typedef  TYPE_2__ ngx_http_tfs_t ;
typedef  int /*<<< orphan*/  ngx_http_tfs_peer_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 

ngx_http_tfs_peer_connection_t *
FUNC2(ngx_http_tfs_t *t)
{
    if (t->r_ctx.version == 1) {
        return FUNC0(t);
    }

    if (t->r_ctx.version == 2) {
        return FUNC1(t);
    }

    return NULL;
}