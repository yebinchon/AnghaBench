
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_6__ {int not_found; int valid; scalar_t__ no_cacheable; int * data; int * len; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_7__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int GeoIPRecord ;


 int GeoIPRecord_delete (int *) ;
 int NGX_ERROR ;
 scalar_t__ NGX_INT64_LEN ;
 int NGX_OK ;
 int * ngx_http_geoip_get_city_record (TYPE_2__*) ;
 int * ngx_pnalloc (int ,scalar_t__) ;
 int * ngx_sprintf (int *,char*,float) ;

__attribute__((used)) static ngx_int_t
ngx_http_geoip_city_float_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    float val;
    GeoIPRecord *gr;

    gr = ngx_http_geoip_get_city_record(r);
    if (gr == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->data = ngx_pnalloc(r->pool, NGX_INT64_LEN + 5);
    if (v->data == ((void*)0)) {
        GeoIPRecord_delete(gr);
        return NGX_ERROR;
    }

    val = *(float *) ((char *) gr + data);

    v->len = ngx_sprintf(v->data, "%.4f", val) - v->data;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    GeoIPRecord_delete(gr);

    return NGX_OK;
}
