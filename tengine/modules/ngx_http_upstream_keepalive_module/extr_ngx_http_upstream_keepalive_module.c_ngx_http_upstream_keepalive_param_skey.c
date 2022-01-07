
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {int * slice_key; } ;
typedef TYPE_1__ ngx_http_upstream_keepalive_srv_conf_t ;
typedef int ngx_http_complex_value_t ;
struct TYPE_8__ {int * complex_value; int * value; TYPE_3__* cf; } ;
typedef TYPE_2__ ngx_http_compile_complex_value_t ;
struct TYPE_9__ {int pool; } ;
typedef TYPE_3__ ngx_conf_t ;


 int NGX_ERROR ;
 int ngx_http_compile_complex_value (TYPE_2__*) ;
 int ngx_memzero (TYPE_2__*,int) ;
 int * ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_keepalive_param_skey(ngx_conf_t *cf, void *conf,
    ngx_str_t *val)
{
    ngx_http_compile_complex_value_t ccv;
    ngx_http_upstream_keepalive_srv_conf_t *kcf = conf;

    kcf->slice_key = ngx_palloc(cf->pool,
                                sizeof(ngx_http_complex_value_t));
    if (kcf->slice_key == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = val;
    ccv.complex_value = kcf->slice_key;

    return ngx_http_compile_complex_value(&ccv);
}
