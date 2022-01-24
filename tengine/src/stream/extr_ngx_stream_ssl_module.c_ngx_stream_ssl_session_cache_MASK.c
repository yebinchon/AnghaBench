#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_13__ {scalar_t__ builtin_session_cache; TYPE_6__* shm_zone; } ;
typedef  TYPE_2__ ngx_stream_ssl_conf_t ;
struct TYPE_14__ {char* data; int len; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_15__ {TYPE_1__* args; } ;
typedef  TYPE_4__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_16__ {int /*<<< orphan*/  init; } ;
struct TYPE_12__ {size_t nelts; TYPE_3__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_CONF_UNSET ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_SSL_DFLT_BUILTIN_SCACHE ; 
 scalar_t__ NGX_SSL_NONE_SCACHE ; 
 scalar_t__ NGX_SSL_NO_BUILTIN_SCACHE ; 
 scalar_t__ NGX_SSL_NO_SCACHE ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int ngx_pagesize ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 TYPE_6__* FUNC3 (TYPE_4__*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_ssl_session_cache_init ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  ngx_stream_ssl_module ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC6(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_ssl_conf_t  *scf = conf;

    size_t       len;
    ngx_str_t   *value, name, size;
    ngx_int_t    n;
    ngx_uint_t   i, j;

    value = cf->args->elts;

    for (i = 1; i < cf->args->nelts; i++) {

        if (FUNC4(value[i].data, "off") == 0) {
            scf->builtin_session_cache = NGX_SSL_NO_SCACHE;
            continue;
        }

        if (FUNC4(value[i].data, "none") == 0) {
            scf->builtin_session_cache = NGX_SSL_NONE_SCACHE;
            continue;
        }

        if (FUNC4(value[i].data, "builtin") == 0) {
            scf->builtin_session_cache = NGX_SSL_DFLT_BUILTIN_SCACHE;
            continue;
        }

        if (value[i].len > sizeof("builtin:") - 1
            && FUNC5(value[i].data, "builtin:", sizeof("builtin:") - 1)
               == 0)
        {
            n = FUNC0(value[i].data + sizeof("builtin:") - 1,
                         value[i].len - (sizeof("builtin:") - 1));

            if (n == NGX_ERROR) {
                goto invalid;
            }

            scf->builtin_session_cache = n;

            continue;
        }

        if (value[i].len > sizeof("shared:") - 1
            && FUNC5(value[i].data, "shared:", sizeof("shared:") - 1)
               == 0)
        {
            len = 0;

            for (j = sizeof("shared:") - 1; j < value[i].len; j++) {
                if (value[i].data[j] == ':') {
                    break;
                }

                len++;
            }

            if (len == 0) {
                goto invalid;
            }

            name.len = len;
            name.data = value[i].data + sizeof("shared:") - 1;

            size.len = value[i].len - j - 1;
            size.data = name.data + len + 1;

            n = FUNC2(&size);

            if (n == NGX_ERROR) {
                goto invalid;
            }

            if (n < (ngx_int_t) (8 * ngx_pagesize)) {
                FUNC1(NGX_LOG_EMERG, cf, 0,
                                   "session cache \"%V\" is too small",
                                   &value[i]);

                return NGX_CONF_ERROR;
            }

            scf->shm_zone = FUNC3(cf, &name, n,
                                                   &ngx_stream_ssl_module);
            if (scf->shm_zone == NULL) {
                return NGX_CONF_ERROR;
            }

            scf->shm_zone->init = ngx_ssl_session_cache_init;

            continue;
        }

        goto invalid;
    }

    if (scf->shm_zone && scf->builtin_session_cache == NGX_CONF_UNSET) {
        scf->builtin_session_cache = NGX_SSL_NO_BUILTIN_SCACHE;
    }

    return NGX_CONF_OK;

invalid:

    FUNC1(NGX_LOG_EMERG, cf, 0,
                       "invalid session cache \"%V\"", &value[i]);

    return NGX_CONF_ERROR;
}