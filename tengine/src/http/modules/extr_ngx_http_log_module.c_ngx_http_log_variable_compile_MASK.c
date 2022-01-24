#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_3__ {scalar_t__ data; int /*<<< orphan*/  run; int /*<<< orphan*/  getlen; scalar_t__ len; } ;
typedef  TYPE_1__ ngx_http_log_op_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
#define  NGX_HTTP_LOG_ESCAPE_JSON 129 
#define  NGX_HTTP_LOG_ESCAPE_NONE 128 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_log_json_variable ; 
 int /*<<< orphan*/  ngx_http_log_json_variable_getlen ; 
 int /*<<< orphan*/  ngx_http_log_unescaped_variable ; 
 int /*<<< orphan*/  ngx_http_log_unescaped_variable_getlen ; 
 int /*<<< orphan*/  ngx_http_log_variable ; 
 int /*<<< orphan*/  ngx_http_log_variable_getlen ; 

__attribute__((used)) static ngx_int_t
FUNC1(ngx_conf_t *cf, ngx_http_log_op_t *op,
    ngx_str_t *value, ngx_uint_t escape)
{
    ngx_int_t  index;

    index = FUNC0(cf, value);
    if (index == NGX_ERROR) {
        return NGX_ERROR;
    }

    op->len = 0;

    switch (escape) {
    case NGX_HTTP_LOG_ESCAPE_JSON:
        op->getlen = ngx_http_log_json_variable_getlen;
        op->run = ngx_http_log_json_variable;
        break;

    case NGX_HTTP_LOG_ESCAPE_NONE:
        op->getlen = ngx_http_log_unescaped_variable_getlen;
        op->run = ngx_http_log_unescaped_variable;
        break;

    default: /* NGX_HTTP_LOG_ESCAPE_DEFAULT */
        op->getlen = ngx_http_log_variable_getlen;
        op->run = ngx_http_log_variable;
    }

    op->data = index;

    return NGX_OK;
}