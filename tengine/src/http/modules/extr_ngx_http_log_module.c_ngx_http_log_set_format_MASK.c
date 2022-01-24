#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_13__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_log_op_t ;
struct TYPE_12__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_14__ {TYPE_11__ formats; } ;
typedef  TYPE_2__ ngx_http_log_main_conf_t ;
struct TYPE_15__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/ * flushes; TYPE_1__ name; } ;
typedef  TYPE_3__ ngx_http_log_fmt_t ;
struct TYPE_16__ {TYPE_7__* args; int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_17__ {TYPE_1__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 char* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_7__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_log_main_conf_t *lmcf = conf;

    ngx_str_t           *value;
    ngx_uint_t           i;
    ngx_http_log_fmt_t  *fmt;

    value = cf->args->elts;

    fmt = lmcf->formats.elts;
    for (i = 0; i < lmcf->formats.nelts; i++) {
        if (fmt[i].name.len == value[1].len
            && FUNC4(fmt[i].name.data, value[1].data) == 0)
        {
            FUNC2(NGX_LOG_EMERG, cf, 0,
                               "duplicate \"log_format\" name \"%V\"",
                               &value[1]);
            return NGX_CONF_ERROR;
        }
    }

    fmt = FUNC1(&lmcf->formats);
    if (fmt == NULL) {
        return NGX_CONF_ERROR;
    }

    fmt->name = value[1];

    fmt->flushes = FUNC0(cf->pool, 4, sizeof(ngx_int_t));
    if (fmt->flushes == NULL) {
        return NGX_CONF_ERROR;
    }

    fmt->ops = FUNC0(cf->pool, 16, sizeof(ngx_http_log_op_t));
    if (fmt->ops == NULL) {
        return NGX_CONF_ERROR;
    }

    return FUNC3(cf, fmt->flushes, fmt->ops, cf->args, 2);
}