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
struct TYPE_8__ {int not_found; int valid; scalar_t__ no_cacheable; int /*<<< orphan*/ * data; int /*<<< orphan*/ * len; } ;
typedef  TYPE_2__ ngx_stream_variable_value_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_stream_session_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  GeoIPRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_INT64_LEN ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    int           val;
    GeoIPRecord  *gr;

    gr = FUNC3(s);
    if (gr == NULL) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->data = FUNC1(s->connection->pool, NGX_INT64_LEN);
    if (v->data == NULL) {
        FUNC0(gr);
        return NGX_ERROR;
    }

    val = *(int *) ((char *) gr + data);

    v->len = FUNC2(v->data, "%d", val) - v->data;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    FUNC0(gr);

    return NGX_OK;
}