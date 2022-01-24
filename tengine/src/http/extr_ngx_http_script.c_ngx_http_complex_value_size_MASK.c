#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_11__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_9__ {size_t size; } ;
struct TYPE_12__ {TYPE_1__ u; int /*<<< orphan*/ * lengths; } ;
typedef  TYPE_4__ ngx_http_complex_value_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

size_t
FUNC3(ngx_http_request_t *r,
    ngx_http_complex_value_t *val, size_t default_value)
{
    size_t     size;
    ngx_str_t  value;

    if (val == NULL) {
        return default_value;
    }

    if (val->lengths == NULL) {
        return val->u.size;
    }

    if (FUNC0(r, val, &value) != NGX_OK) {
        return default_value;
    }

    size = FUNC2(&value);

    if (size == (size_t) NGX_ERROR) {
        FUNC1(NGX_LOG_ERR, r->connection->log, 0,
                      "invalid size \"%V\"", &value);
        return default_value;
    }

    return size;
}