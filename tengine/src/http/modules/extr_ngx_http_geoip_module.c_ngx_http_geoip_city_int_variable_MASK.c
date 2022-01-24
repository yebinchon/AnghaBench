#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_6__ {int not_found; int valid; scalar_t__ no_cacheable; int /*<<< orphan*/ * data; int /*<<< orphan*/ * len; } ;
typedef  TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  GeoIPRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_INT64_LEN ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    int           val;
    GeoIPRecord  *gr;

    gr = FUNC1(r);
    if (gr == NULL) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->data = FUNC2(r->pool, NGX_INT64_LEN);
    if (v->data == NULL) {
        FUNC0(gr);
        return NGX_ERROR;
    }

    val = *(int *) ((char *) gr + data);

    v->len = FUNC3(v->data, "%d", val) - v->data;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    FUNC0(gr);

    return NGX_OK;
}