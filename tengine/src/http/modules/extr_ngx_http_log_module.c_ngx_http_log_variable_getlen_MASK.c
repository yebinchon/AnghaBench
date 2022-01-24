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
struct TYPE_3__ {uintptr_t len; int escape; int /*<<< orphan*/  data; scalar_t__ not_found; } ;
typedef  TYPE_1__ ngx_http_variable_value_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,uintptr_t) ; 
 uintptr_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t) ; 

__attribute__((used)) static size_t
FUNC2(ngx_http_request_t *r, uintptr_t data)
{
    uintptr_t                   len;
    ngx_http_variable_value_t  *value;

    value = FUNC0(r, data);

    if (value == NULL || value->not_found) {
        return 1;
    }

    len = FUNC1(NULL, value->data, value->len);

    value->escape = len ? 1 : 0;

    return value->len + len * 3;
}