
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_6__ {int ctx; int log; } ;
typedef TYPE_2__ ngx_ssl_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int OBJ_sn2nid (char*) ;
 scalar_t__ SSL_CTX_set1_curves_list (int ,char*) ;
 int SSL_CTX_set_ecdh_auto (int ,int) ;
 int SSL_CTX_set_options (int ,int ) ;
 int SSL_CTX_set_tmp_ecdh (int ,int *) ;
 int SSL_OP_SINGLE_ECDH_USE ;
 int ngx_ssl_error (int ,int ,int ,char*,char*) ;
 scalar_t__ ngx_strcmp (char*,char*) ;

ngx_int_t
ngx_ssl_ecdh_curve(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_str_t *name)
{
    int nid;
    char *curve;
    EC_KEY *ecdh;

    if (ngx_strcmp(name->data, "auto") == 0) {
        curve = "prime256v1";

    } else {
        curve = (char *) name->data;
    }

    nid = OBJ_sn2nid(curve);
    if (nid == 0) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "OBJ_sn2nid(\"%s\") failed: unknown curve", curve);
        return NGX_ERROR;
    }

    ecdh = EC_KEY_new_by_curve_name(nid);
    if (ecdh == ((void*)0)) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "EC_KEY_new_by_curve_name(\"%s\") failed", curve);
        return NGX_ERROR;
    }

    SSL_CTX_set_options(ssl->ctx, SSL_OP_SINGLE_ECDH_USE);

    SSL_CTX_set_tmp_ecdh(ssl->ctx, ecdh);

    EC_KEY_free(ecdh);



    return NGX_OK;
}
