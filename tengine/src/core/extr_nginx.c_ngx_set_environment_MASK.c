#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_9__ {char* data; int len; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_10__ {char** data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_11__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; int /*<<< orphan*/  conf_ctx; } ;
typedef  TYPE_3__ ngx_cycle_t ;
struct TYPE_13__ {size_t nelts; TYPE_1__* elts; } ;
struct TYPE_12__ {char** environment; TYPE_8__ env; } ;
typedef  TYPE_4__ ngx_core_conf_t ;

/* Variables and functions */
 char** environ ; 
 char** FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  ngx_cleanup_environment ; 
 int /*<<< orphan*/  ngx_core_module ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** ngx_os_environ ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

char **
FUNC6(ngx_cycle_t *cycle, ngx_uint_t *last)
{
    char                **p, **env;
    ngx_str_t            *var;
    ngx_uint_t            i, n;
    ngx_core_conf_t      *ccf;
    ngx_pool_cleanup_t   *cln;

    ccf = (ngx_core_conf_t *) FUNC2(cycle->conf_ctx, ngx_core_module);

    if (last == NULL && ccf->environment) {
        return ccf->environment;
    }

    var = ccf->env.elts;

    for (i = 0; i < ccf->env.nelts; i++) {
        if (FUNC4(var[i].data, "TZ") == 0
            || FUNC5(var[i].data, "TZ=", 3) == 0)
        {
            goto tz_found;
        }
    }

    var = FUNC1(&ccf->env);
    if (var == NULL) {
        return NULL;
    }

    var->len = 2;
    var->data = (u_char *) "TZ";

    var = ccf->env.elts;

tz_found:

    n = 0;

    for (i = 0; i < ccf->env.nelts; i++) {

        if (var[i].data[var[i].len] == '=') {
            n++;
            continue;
        }

        for (p = ngx_os_environ; *p; p++) {

            if (FUNC5(*p, var[i].data, var[i].len) == 0
                && (*p)[var[i].len] == '=')
            {
                n++;
                break;
            }
        }
    }

    if (last) {
        env = FUNC0((*last + n + 1) * sizeof(char *), cycle->log);
        if (env == NULL) {
            return NULL;
        }

        *last = n;

    } else {
        cln = FUNC3(cycle->pool, 0);
        if (cln == NULL) {
            return NULL;
        }

        env = FUNC0((n + 1) * sizeof(char *), cycle->log);
        if (env == NULL) {
            return NULL;
        }

        cln->handler = ngx_cleanup_environment;
        cln->data = env;
    }

    n = 0;

    for (i = 0; i < ccf->env.nelts; i++) {

        if (var[i].data[var[i].len] == '=') {
            env[n++] = (char *) var[i].data;
            continue;
        }

        for (p = ngx_os_environ; *p; p++) {

            if (FUNC5(*p, var[i].data, var[i].len) == 0
                && (*p)[var[i].len] == '=')
            {
                env[n++] = *p;
                break;
            }
        }
    }

    env[n] = NULL;

    if (last == NULL) {
        ccf->environment = env;
        environ = env;
    }

    return env;
}