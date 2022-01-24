#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_9__ {scalar_t__ accessed; scalar_t__ checked; scalar_t__ fails; } ;
typedef  TYPE_2__ ngx_stream_upstream_rr_peer_t ;
struct TYPE_10__ {int /*<<< orphan*/  peers; TYPE_2__* current; } ;
typedef  TYPE_3__ ngx_stream_upstream_rr_peer_data_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef  TYPE_4__ ngx_peer_connection_t ;
struct TYPE_8__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ NGX_STREAM_UPSTREAM_NOTIFY_CONNECT ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ngx_peer_connection_t *pc,
    void *data, ngx_uint_t type)
{
    ngx_stream_upstream_rr_peer_data_t  *rrp = data;

    ngx_stream_upstream_rr_peer_t  *peer;

    peer = rrp->current;

    if (type == NGX_STREAM_UPSTREAM_NOTIFY_CONNECT
        && pc->connection->type == SOCK_STREAM)
    {
        FUNC2(rrp->peers);
        FUNC0(rrp->peers, peer);

        if (peer->accessed < peer->checked) {
            peer->fails = 0;
        }

        FUNC1(rrp->peers, peer);
        FUNC3(rrp->peers);
    }
}