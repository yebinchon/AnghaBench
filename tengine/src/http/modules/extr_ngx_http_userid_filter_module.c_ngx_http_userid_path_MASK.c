#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_5__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *
FUNC3(ngx_conf_t *cf, void *post, void *data)
{
    ngx_str_t  *path = data;

    u_char  *p, *new;

    new = FUNC2(cf->pool, sizeof("; path=") - 1 + path->len);
    if (new == NULL) {
        return NGX_CONF_ERROR;
    }

    p = FUNC0(new, "; path=", sizeof("; path=") - 1);
    FUNC1(p, path->data, path->len);

    path->len += sizeof("; path=") - 1;
    path->data = new;

    return NGX_CONF_OK;
}