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
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  resolver; } ;
typedef  TYPE_1__ ngx_resolver_connection_t ;
struct TYPE_7__ {scalar_t__ ready; TYPE_3__* data; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_8__ {TYPE_1__* data; } ;
typedef  TYPE_3__ ngx_connection_t ;

/* Variables and functions */
 int NGX_RESOLVER_UDP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(ngx_event_t *rev)
{
    ssize_t                     n;
    ngx_connection_t           *c;
    ngx_resolver_connection_t  *rec;
    u_char                      buf[NGX_RESOLVER_UDP_SIZE];

    c = rev->data;
    rec = c->data;

    do {
        n = FUNC1(c, buf, NGX_RESOLVER_UDP_SIZE);

        if (n < 0) {
            return;
        }

        FUNC0(rec->resolver, buf, n, 0);

    } while (rev->ready);
}