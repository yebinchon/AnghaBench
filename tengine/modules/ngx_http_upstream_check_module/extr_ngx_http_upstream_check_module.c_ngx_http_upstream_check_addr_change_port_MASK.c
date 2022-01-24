#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_9__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {TYPE_1__ name; int /*<<< orphan*/  socklen; TYPE_3__* sockaddr; } ;
typedef  TYPE_2__ ngx_addr_t ;
struct TYPE_11__ {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  NGX_INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  NGX_OK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_pool_t *pool, ngx_addr_t *dst,
    ngx_addr_t *src, ngx_uint_t port)
{
    size_t                len;
    u_char               *p;
    struct sockaddr_in   *sin;
#if (NGX_HAVE_INET6)
    struct sockaddr_in6  *sin6;
#endif

    dst->socklen = src->socklen;
    dst->sockaddr = FUNC2(pool, dst->socklen);
    if (dst->sockaddr == NULL) {
        return NGX_ERROR;
    }

    FUNC1(dst->sockaddr, src->sockaddr, dst->socklen);

    switch (dst->sockaddr->sa_family) {

    case AF_INET:

        len = NGX_INET_ADDRSTRLEN + sizeof(":65535") - 1;
        sin = (struct sockaddr_in *) dst->sockaddr;
        sin->sin_port = FUNC0(port);

        break;

#if (NGX_HAVE_INET6)
    case AF_INET6:

        len = NGX_INET6_ADDRSTRLEN + sizeof(":65535") - 1;
        sin6 = (struct sockaddr_in6 *) dst->sockaddr;
        sin6->sin6_port = htons(port);

        break;
#endif

    default:
        return NGX_ERROR;
    }

    p = FUNC3(pool, len);
    if (p == NULL) {
        return NGX_ERROR;
    }

    len = FUNC4(dst->sockaddr, dst->socklen, p, len, 1);

    dst->name.len = len;
    dst->name.data = p;

    return NGX_OK;
}