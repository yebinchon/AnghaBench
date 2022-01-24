#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_6__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_7__ {int socklen; struct sockaddr* sockaddr; } ;
typedef  TYPE_1__ ngx_peer_connection_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_8__ {int /*<<< orphan*/  peer_addr_text; TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_http_tfs_peer_connection_t ;
struct TYPE_9__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  port; } ;
typedef  TYPE_3__ ngx_http_tfs_inet_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__) ; 
 struct sockaddr_in* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC5(ngx_pool_t *pool, ngx_http_tfs_peer_connection_t *p,
    ngx_http_tfs_inet_t *addr)
{
    struct sockaddr_in     *in;
    ngx_peer_connection_t  *peer;

    if (addr == NULL) {
        return NGX_ERROR;
    }

    in = FUNC2(pool, sizeof(struct sockaddr_in));
    if (in == NULL) {
        return NGX_ERROR;
    }

    in->sin_family = AF_INET;
    in->sin_port = FUNC0(addr->port);
    in->sin_addr.s_addr = addr->ip;

    peer = &p->peer;
    peer->sockaddr = (struct sockaddr *) in;
    peer->socklen = sizeof(struct sockaddr_in);

    FUNC3(p->peer_addr_text, "%s:%d",
                FUNC1(in->sin_addr),
                FUNC4(in->sin_port));

    return NGX_OK;
}