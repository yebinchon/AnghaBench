
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_13__ {int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {scalar_t__ expires; int expires_time; TYPE_4__* expires_value; } ;
typedef TYPE_3__ ngx_http_headers_conf_t ;
struct TYPE_15__ {int * lengths; } ;
typedef TYPE_4__ ngx_http_complex_value_t ;
struct TYPE_16__ {TYPE_4__* complex_value; TYPE_2__* value; TYPE_6__* cf; } ;
typedef TYPE_5__ ngx_http_compile_complex_value_t ;
struct TYPE_17__ {int pool; TYPE_1__* args; } ;
typedef TYPE_6__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_12__ {int nelts; TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_HTTP_EXPIRES_ACCESS ;
 scalar_t__ NGX_HTTP_EXPIRES_MODIFIED ;
 scalar_t__ NGX_HTTP_EXPIRES_UNSET ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_5__*) ;
 scalar_t__ ngx_http_parse_expires (TYPE_2__*,scalar_t__*,int *,char**) ;
 int ngx_memzero (TYPE_5__*,int) ;
 TYPE_4__* ngx_palloc (int ,int) ;
 scalar_t__ ngx_strcmp (int ,char*) ;

__attribute__((used)) static char *
ngx_http_headers_expires(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_headers_conf_t *hcf = conf;

    char *err;
    ngx_str_t *value;
    ngx_int_t rc;
    ngx_uint_t n;
    ngx_http_complex_value_t cv;
    ngx_http_compile_complex_value_t ccv;

    if (hcf->expires != NGX_HTTP_EXPIRES_UNSET) {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (cf->args->nelts == 2) {

        hcf->expires = NGX_HTTP_EXPIRES_ACCESS;

        n = 1;

    } else {

        if (ngx_strcmp(value[1].data, "modified") != 0) {
            return "invalid value";
        }

        hcf->expires = NGX_HTTP_EXPIRES_MODIFIED;

        n = 2;
    }

    ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = &value[n];
    ccv.complex_value = &cv;

    if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (cv.lengths != ((void*)0)) {

        hcf->expires_value = ngx_palloc(cf->pool,
                                        sizeof(ngx_http_complex_value_t));
        if (hcf->expires_value == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        *hcf->expires_value = cv;

        return NGX_CONF_OK;
    }

    rc = ngx_http_parse_expires(&value[n], &hcf->expires, &hcf->expires_time,
                                &err);
    if (rc != NGX_OK) {
        return err;
    }

    return NGX_CONF_OK;
}
