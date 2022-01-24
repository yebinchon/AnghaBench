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
typedef  int ngx_uint_t ;
struct TYPE_3__ {int /*<<< orphan*/  addr_resend_queue; int /*<<< orphan*/  addr6_resend_queue; int /*<<< orphan*/  srv_resend_queue; int /*<<< orphan*/  name_resend_queue; } ;
typedef  TYPE_1__ ngx_resolver_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_uint_t
FUNC1(ngx_resolver_t *r)
{
    return FUNC0(&r->name_resend_queue)
           && FUNC0(&r->srv_resend_queue)
#if (NGX_HAVE_INET6)
           && ngx_queue_empty(&r->addr6_resend_queue)
#endif
           && FUNC0(&r->addr_resend_queue);
}