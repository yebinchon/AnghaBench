
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_12__ {size_t len; int valid; int not_found; scalar_t__ no_cacheable; int * data; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_13__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_14__ {int * org; scalar_t__ org_v6; } ;
typedef TYPE_3__ ngx_http_geoip_conf_t ;


 char* GeoIP_name_by_ipnum (int *,int ) ;
 char* GeoIP_name_by_ipnum_v6 (int *,int ) ;
 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_free (char*) ;
 int ngx_http_geoip_addr (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_geoip_addr_v6 (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_geoip_module ;
 TYPE_3__* ngx_http_get_module_main_conf (TYPE_2__*,int ) ;
 int ngx_memcpy (int *,char*,size_t) ;
 int * ngx_pnalloc (int ,size_t) ;
 size_t ngx_strlen (char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_geoip_org_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    size_t len;
    char *val;
    ngx_http_geoip_conf_t *gcf;

    gcf = ngx_http_get_module_main_conf(r, ngx_http_geoip_module);

    if (gcf->org == ((void*)0)) {
        goto not_found;
    }
    val = GeoIP_name_by_ipnum(gcf->org, ngx_http_geoip_addr(r, gcf));


    if (val == ((void*)0)) {
        goto not_found;
    }

    len = ngx_strlen(val);
    v->data = ngx_pnalloc(r->pool, len);
    if (v->data == ((void*)0)) {
        ngx_free(val);
        return NGX_ERROR;
    }

    ngx_memcpy(v->data, val, len);

    v->len = len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    ngx_free(val);

    return NGX_OK;

not_found:

    v->not_found = 1;

    return NGX_OK;
}
