#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t len; int valid; int not_found; scalar_t__ no_cacheable; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_stream_variable_value_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_stream_session_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  GeoIPRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    char         *val;
    size_t        len;
    GeoIPRecord  *gr;

    gr = FUNC3(s);
    if (gr == NULL) {
        goto not_found;
    }

    val = *(char **) ((char *) gr + data);
    if (val == NULL) {
        goto no_value;
    }

    len = FUNC4(val);
    v->data = FUNC2(s->connection->pool, len);
    if (v->data == NULL) {
        FUNC0(gr);
        return NGX_ERROR;
    }

    FUNC1(v->data, val, len);

    v->len = len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    FUNC0(gr);

    return NGX_OK;

no_value:

    FUNC0(gr);

not_found:

    v->not_found = 1;

    return NGX_OK;
}