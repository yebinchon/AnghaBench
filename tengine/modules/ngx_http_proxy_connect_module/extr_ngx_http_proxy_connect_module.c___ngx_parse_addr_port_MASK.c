#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_4__ {int /*<<< orphan*/  sockaddr; } ;
typedef  TYPE_1__ ngx_addr_t ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char*,size_t) ; 
 char* FUNC3 (char*,char*,char) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_pool_t *pool, ngx_addr_t *addr, u_char *text,
    size_t len)
{
    u_char     *p, *last;
    size_t      plen;
    ngx_int_t   rc, port;

    rc = FUNC2(pool, addr, text, len);

    if (rc != NGX_DECLINED) {
        return rc;
    }

    last = text + len;

#if (NGX_HAVE_INET6)
    if (len && text[0] == '[') {

        p = ngx_strlchr(text, last, ']');

        if (p == NULL || p == last - 1 || *++p != ':') {
            return NGX_DECLINED;
        }

        text++;
        len -= 2;

    } else
#endif

    {
        p = FUNC3(text, last, ':');

        if (p == NULL) {
            return NGX_DECLINED;
        }
    }

    p++;
    plen = last - p;

    port = FUNC1(p, plen);

    if (port < 1 || port > 65535) {
        return NGX_DECLINED;
    }

    len -= plen + 1;

    rc = FUNC2(pool, addr, text, len);

    if (rc != NGX_OK) {
        return rc;
    }

    FUNC0(addr->sockaddr, (in_port_t) port);

    return NGX_OK;
}