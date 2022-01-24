#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t len; int valid; int not_found; scalar_t__ no_cacheable; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_stream_variable_value_t ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_stream_session_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {int /*<<< orphan*/  region; int /*<<< orphan*/  country_code; } ;
struct TYPE_10__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ GeoIPRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_4__* FUNC4 (TYPE_3__*) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    size_t        len;
    const char   *val;
    GeoIPRecord  *gr;

    gr = FUNC4(s);
    if (gr == NULL) {
        goto not_found;
    }

    val = FUNC1(gr->country_code, gr->region);

    FUNC0(gr);

    if (val == NULL) {
        goto not_found;
    }

    len = FUNC5(val);
    v->data = FUNC3(s->connection->pool, len);
    if (v->data == NULL) {
        return NGX_ERROR;
    }

    FUNC2(v->data, val, len);

    v->len = len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    return NGX_OK;

not_found:

    v->not_found = 1;

    return NGX_OK;
}