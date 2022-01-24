#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_10__ {int len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_11__ {size_t nelts; TYPE_1__* elts; } ;
typedef  TYPE_2__ ngx_array_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 TYPE_6__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 

ngx_array_t *
FUNC4(ngx_pool_t *pool, ngx_str_t *path)
{
    u_char       *p, *last, *end;
    ngx_str_t    *str;
    ngx_array_t  *array;

    array = FUNC0(pool, 8, sizeof(ngx_str_t));
    if (array == NULL) {
        return NULL;
    }

    p = path->data + 1;
    last = path->data + path->len;

    while(p < last) {
        end = FUNC3(p, last, '/');
        str = FUNC1(array);

        if (str == NULL) {
            return NULL;
        }

        if (end) {
            str->data = p;
            str->len = end - p;

        } else {
            str->data = p;
            str->len = last - p;

        }

        p += str->len + 1;
    }

#if (NGX_DEBUG)
    ngx_str_t  *arg;
    ngx_uint_t  i;

    arg = array->elts;
    for (i = 0; i < array->nelts; i++) {
        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "[dyups] res[%i]:%V", i, &arg[i]);
    }
#endif

    return array;
}