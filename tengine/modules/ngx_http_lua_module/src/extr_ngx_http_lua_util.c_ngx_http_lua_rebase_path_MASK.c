#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_5__ {char* data; size_t len; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 scalar_t__ NGX_OK ; 
 char* FUNC0 (char*,char*,size_t) ; 
 TYPE_4__* ngx_cycle ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t) ; 

u_char *
FUNC3(ngx_pool_t *pool, u_char *src, size_t len)
{
    u_char     *p;
    ngx_str_t   dst;

    dst.data = FUNC2(pool, len + 1);
    if (dst.data == NULL) {
        return NULL;
    }

    dst.len = len;

    p = FUNC0(dst.data, src, len);
    *p = '\0';

    if (FUNC1(pool, (ngx_str_t *) &ngx_cycle->prefix, &dst)
        != NGX_OK)
    {
        return NULL;
    }

    return dst.data;
}