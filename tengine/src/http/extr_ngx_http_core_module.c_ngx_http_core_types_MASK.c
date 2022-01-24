#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * types; } ;
typedef  TYPE_1__ ngx_http_core_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_hash_key_t ;
struct TYPE_6__ {void* handler_conf; int /*<<< orphan*/  handler; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 char* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_core_type ; 

__attribute__((used)) static char *
FUNC2(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_core_loc_conf_t *clcf = conf;

    char        *rv;
    ngx_conf_t   save;

    if (clcf->types == NULL) {
        clcf->types = FUNC0(cf->pool, 64, sizeof(ngx_hash_key_t));
        if (clcf->types == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    save = *cf;
    cf->handler = ngx_http_core_type;
    cf->handler_conf = conf;

    rv = FUNC1(cf, NULL);

    *cf = save;

    return rv;
}