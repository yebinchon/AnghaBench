
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_5__ {scalar_t__ city; scalar_t__ city_v6; } ;
typedef TYPE_1__ ngx_http_geoip_conf_t ;
typedef int GeoIPRecord ;


 int * GeoIP_record_by_ipnum (scalar_t__,int ) ;
 int * GeoIP_record_by_ipnum_v6 (scalar_t__,int ) ;
 int ngx_http_geoip_addr (int *,TYPE_1__*) ;
 int ngx_http_geoip_addr_v6 (int *,TYPE_1__*) ;
 int ngx_http_geoip_module ;
 TYPE_1__* ngx_http_get_module_main_conf (int *,int ) ;

__attribute__((used)) static GeoIPRecord *
ngx_http_geoip_get_city_record(ngx_http_request_t *r)
{
    ngx_http_geoip_conf_t *gcf;

    gcf = ngx_http_get_module_main_conf(r, ngx_http_geoip_module);

    if (gcf->city) {







        return GeoIP_record_by_ipnum(gcf->city, ngx_http_geoip_addr(r, gcf));

    }

    return ((void*)0);
}
