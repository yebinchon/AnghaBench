#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t len; int valid; int not_found; scalar_t__ no_cacheable; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_stream_variable_value_t ;
struct TYPE_15__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_stream_session_t ;
struct TYPE_16__ {int /*<<< orphan*/ * org; scalar_t__ org_v6; } ;
typedef  TYPE_4__ ngx_stream_geoip_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_stream_geoip_module ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char*) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    size_t                    len;
    char                     *val;
    ngx_stream_geoip_conf_t  *gcf;

    gcf = FUNC7(s, ngx_stream_geoip_module);

    if (gcf->org == NULL) {
        goto not_found;
    }

#if (NGX_HAVE_GEOIP_V6)
    val = gcf->org_v6
              ? GeoIP_name_by_ipnum_v6(gcf->org,
                                       ngx_stream_geoip_addr_v6(s, gcf))
              : GeoIP_name_by_ipnum(gcf->org,
                                    ngx_stream_geoip_addr(s, gcf));
#else
    val = FUNC0(gcf->org, FUNC5(s, gcf));
#endif

    if (val == NULL) {
        goto not_found;
    }

    len = FUNC8(val);
    v->data = FUNC4(s->connection->pool, len);
    if (v->data == NULL) {
        FUNC2(val);
        return NGX_ERROR;
    }

    FUNC3(v->data, val, len);

    v->len = len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    FUNC2(val);

    return NGX_OK;

not_found:

    v->not_found = 1;

    return NGX_OK;
}