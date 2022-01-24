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
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {int len; int valid; char* data; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
struct TYPE_13__ {TYPE_2__ value; scalar_t__ percent; } ;
typedef  TYPE_3__ ngx_stream_split_clients_part_t ;
struct TYPE_14__ {int /*<<< orphan*/  parts; } ;
typedef  TYPE_4__ ngx_stream_split_clients_ctx_t ;
struct TYPE_15__ {int len; char* data; } ;
typedef  TYPE_5__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_16__ {TYPE_1__* args; TYPE_4__* ctx; } ;
typedef  TYPE_6__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_11__ {TYPE_5__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,char*,TYPE_5__*) ; 

__attribute__((used)) static char *
FUNC3(ngx_conf_t *cf, ngx_command_t *dummy, void *conf)
{
    ngx_int_t                         n;
    ngx_str_t                        *value;
    ngx_stream_split_clients_ctx_t   *ctx;
    ngx_stream_split_clients_part_t  *part;

    ctx = cf->ctx;
    value = cf->args->elts;

    part = FUNC0(&ctx->parts);
    if (part == NULL) {
        return NGX_CONF_ERROR;
    }

    if (value[0].len == 1 && value[0].data[0] == '*') {
        part->percent = 0;

    } else {
        if (value[0].len == 0 || value[0].data[value[0].len - 1] != '%') {
            goto invalid;
        }

        n = FUNC1(value[0].data, value[0].len - 1, 2);
        if (n == NGX_ERROR || n == 0) {
            goto invalid;
        }

        part->percent = (uint32_t) n;
    }

    part->value.len = value[1].len;
    part->value.valid = 1;
    part->value.no_cacheable = 0;
    part->value.not_found = 0;
    part->value.data = value[1].data;

    return NGX_CONF_OK;

invalid:

    FUNC2(NGX_LOG_EMERG, cf, 0,
                       "invalid percent value \"%V\"", &value[0]);
    return NGX_CONF_ERROR;
}