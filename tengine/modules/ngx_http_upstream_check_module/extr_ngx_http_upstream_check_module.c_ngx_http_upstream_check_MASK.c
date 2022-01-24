#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_24__ {struct TYPE_24__* data; scalar_t__ len; } ;
typedef  TYPE_5__ ngx_str_t ;
typedef  void* ngx_msec_t ;
struct TYPE_22__ {scalar_t__ status_alive; } ;
struct TYPE_20__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_25__ {size_t port; size_t fall_count; size_t rise_count; size_t default_down; size_t unique; TYPE_3__ code; TYPE_1__ send; TYPE_8__* check_type_conf; void* check_timeout; void* check_interval; } ;
typedef  TYPE_6__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_26__ {TYPE_4__* args; } ;
typedef  TYPE_7__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_21__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_27__ {scalar_t__ default_status_alive; TYPE_2__ default_send; } ;
typedef  TYPE_8__ ngx_check_conf_t ;
struct TYPE_23__ {size_t nelts; TYPE_5__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 TYPE_8__* NGX_CONF_UNSET_PTR ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 void* FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,char*,TYPE_5__*) ; 
 TYPE_6__* FUNC2 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_http_upstream_check_module ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_5__*,char*,int) ; 

__attribute__((used)) static char *
FUNC7(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_str_t                           *value, s;
    ngx_uint_t                           i, port, rise, fall, default_down, unique;
    ngx_msec_t                           interval, timeout;
    ngx_check_conf_t                    *check;
    ngx_http_upstream_check_srv_conf_t  *ucscf;

    /* default values */
    port = 0;
    rise = 2;
    fall = 5;
    interval = 30000;
    timeout = 1000;
    default_down = 1;
    unique = 0;

    value = cf->args->elts;

    ucscf = FUNC2(cf,
                                              ngx_http_upstream_check_module);
    if (ucscf == NULL) {
        return NGX_CONF_ERROR;
    }

    for (i = 1; i < cf->args->nelts; i++) {

        if (FUNC6(value[i].data, "type=", 5) == 0) {
            s.len = value[i].len - 5;
            s.data = value[i].data + 5;

            ucscf->check_type_conf = FUNC3(&s);

            if (ucscf->check_type_conf == NULL) {
                goto invalid_check_parameter;
            }

            continue;
        }

        if (FUNC6(value[i].data, "port=", 5) == 0) {
            s.len = value[i].len - 5;
            s.data = value[i].data + 5;

            port = FUNC0(s.data, s.len);
            if (port == (ngx_uint_t) NGX_ERROR || port == 0) {
                goto invalid_check_parameter;
            }

            continue;
        }

        if (FUNC6(value[i].data, "interval=", 9) == 0) {
            s.len = value[i].len - 9;
            s.data = value[i].data + 9;

            interval = FUNC0(s.data, s.len);
            if (interval == (ngx_msec_t) NGX_ERROR || interval == 0) {
                goto invalid_check_parameter;
            }

            continue;
        }

        if (FUNC6(value[i].data, "timeout=", 8) == 0) {
            s.len = value[i].len - 8;
            s.data = value[i].data + 8;

            timeout = FUNC0(s.data, s.len);
            if (timeout == (ngx_msec_t) NGX_ERROR || timeout == 0) {
                goto invalid_check_parameter;
            }

            continue;
        }

        if (FUNC6(value[i].data, "rise=", 5) == 0) {
            s.len = value[i].len - 5;
            s.data = value[i].data + 5;

            rise = FUNC0(s.data, s.len);
            if (rise == (ngx_uint_t) NGX_ERROR || rise == 0) {
                goto invalid_check_parameter;
            }

            continue;
        }

        if (FUNC6(value[i].data, "fall=", 5) == 0) {
            s.len = value[i].len - 5;
            s.data = value[i].data + 5;

            fall = FUNC0(s.data, s.len);
            if (fall == (ngx_uint_t) NGX_ERROR || fall == 0) {
                goto invalid_check_parameter;
            }

            continue;
        }

        if (FUNC6(value[i].data, "default_down=", 13) == 0) {
            s.len = value[i].len - 13;
            s.data = value[i].data + 13;

            if (FUNC5(s.data, (u_char *) "true") == 0) {
                default_down = 1;
            } else if (FUNC5(s.data, (u_char *) "false") == 0) {
                default_down = 0;
            } else {
                FUNC1(NGX_LOG_EMERG, cf, 0,
                                   "invalid value \"%s\", "
                                   "it must be \"true\" or \"false\"",
                                   value[i].data);
                return NGX_CONF_ERROR;
            }

            continue;
        }

        if (FUNC6(value[i].data, "unique=", 7) == 0) {
            s.len = value[i].len - 7;
            s.data = value[i].data + 7;

            if (FUNC5(s.data, (u_char *) "true") == 0) {
                unique = 1;
            } else if (FUNC5(s.data, (u_char *) "false") == 0) {
                unique = 0;
            } else {
                FUNC1(NGX_LOG_EMERG, cf, 0,
                                   "invalid value \"%s\", "
                                   "it must be \"true\" or \"false\"",
                                   value[i].data);
                return NGX_CONF_ERROR;
            }

            continue;
        }

        goto invalid_check_parameter;
    }

    ucscf->port = port;
    ucscf->check_interval = interval;
    ucscf->check_timeout = timeout;
    ucscf->fall_count = fall;
    ucscf->rise_count = rise;
    ucscf->default_down = default_down;
    ucscf->unique = unique;

    if (ucscf->check_type_conf == NGX_CONF_UNSET_PTR) {
        FUNC4(&s, "tcp");
        ucscf->check_type_conf = FUNC3(&s);
    }

    check = ucscf->check_type_conf;

    if (ucscf->send.len == 0) {
        ucscf->send.data = check->default_send.data;
        ucscf->send.len = check->default_send.len;
    }

    if (ucscf->code.status_alive == 0) {
        ucscf->code.status_alive = check->default_status_alive;
    }

    return NGX_CONF_OK;

invalid_check_parameter:

    FUNC1(NGX_LOG_EMERG, cf, 0,
                       "invalid parameter \"%V\"", &value[i]);

    return NGX_CONF_ERROR;
}