#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_12__ {size_t len; int valid; int not_found; scalar_t__ no_cacheable; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_13__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_14__ {int /*<<< orphan*/ * org; scalar_t__ org_v6; } ;
typedef  TYPE_3__ ngx_http_geoip_conf_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_geoip_module ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC8 (char*) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    size_t                  len;
    char                   *val;
    ngx_http_geoip_conf_t  *gcf;

    gcf = FUNC5(r, ngx_http_geoip_module);

    if (gcf->org == NULL) {
        goto not_found;
    }

#if (NGX_HAVE_GEOIP_V6)
    val = gcf->org_v6
              ? GeoIP_name_by_ipnum_v6(gcf->org,
                                       ngx_http_geoip_addr_v6(r, gcf))
              : GeoIP_name_by_ipnum(gcf->org,
                                    ngx_http_geoip_addr(r, gcf));
#else
    val = FUNC0(gcf->org, FUNC3(r, gcf));
#endif

    if (val == NULL) {
        goto not_found;
    }

    len = FUNC8(val);
    v->data = FUNC7(r->pool, len);
    if (v->data == NULL) {
        FUNC2(val);
        return NGX_ERROR;
    }

    FUNC6(v->data, val, len);

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