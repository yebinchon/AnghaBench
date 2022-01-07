
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int * buckets; } ;
struct TYPE_12__ {TYPE_1__ hash; } ;
struct TYPE_17__ {int ignore_headers; int next_upstream; int * upstream; int ssl; int ssl_verify; int ssl_server_name; int * ssl_name; int ssl_session_reuse; int intercept_errors; int buffer_size; int next_upstream_timeout; int read_timeout; int send_timeout; int connect_timeout; int next_upstream_tries; int socket_keepalive; int local; } ;
struct TYPE_14__ {int ssl_protocols; int host_set; TYPE_10__ headers; int * headers_source; TYPE_5__ upstream; int host; scalar_t__ ssl; int ssl_passwords; int ssl_certificate_key; int ssl_certificate; int ssl_crl; int ssl_trusted_certificate; int ssl_verify_depth; int ssl_ciphers; } ;
typedef TYPE_2__ ngx_http_grpc_loc_conf_t ;
struct TYPE_15__ {int * handler; scalar_t__ lmt_excpt; scalar_t__ noname; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_16__ {int max_size; char* name; int bucket_size; } ;
typedef TYPE_4__ ngx_hash_init_t ;
typedef int ngx_conf_t ;


 int NGX_CONF_BITMASK_SET ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_HTTP_UPSTREAM_FT_ERROR ;
 int NGX_HTTP_UPSTREAM_FT_OFF ;
 int NGX_HTTP_UPSTREAM_FT_TIMEOUT ;
 scalar_t__ NGX_OK ;
 int NGX_SSL_TLSv1 ;
 int NGX_SSL_TLSv1_1 ;
 int NGX_SSL_TLSv1_2 ;
 int ngx_align (int,int ) ;
 int ngx_cacheline_size ;
 int ngx_conf_merge_bitmask_value (int,int,int) ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_ptr_value (int ,int ,int *) ;
 int ngx_conf_merge_size_value (int ,int ,size_t) ;
 int ngx_conf_merge_str_value (int ,int ,char*) ;
 int ngx_conf_merge_uint_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int) ;
 TYPE_3__* ngx_http_conf_get_module_loc_conf (int *,int ) ;
 int ngx_http_core_module ;
 int * ngx_http_grpc_handler ;
 int ngx_http_grpc_headers ;
 int ngx_http_grpc_hide_headers ;
 scalar_t__ ngx_http_grpc_init_headers (int *,TYPE_2__*,TYPE_10__*,int ) ;
 scalar_t__ ngx_http_grpc_set_ssl (int *,TYPE_2__*) ;
 scalar_t__ ngx_http_upstream_hide_headers_hash (int *,TYPE_5__*,TYPE_5__*,int ,TYPE_4__*) ;
 scalar_t__ ngx_pagesize ;

__attribute__((used)) static char *
ngx_http_grpc_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_grpc_loc_conf_t *prev = parent;
    ngx_http_grpc_loc_conf_t *conf = child;

    ngx_int_t rc;
    ngx_hash_init_t hash;
    ngx_http_core_loc_conf_t *clcf;

    ngx_conf_merge_ptr_value(conf->upstream.local,
                              prev->upstream.local, ((void*)0));

    ngx_conf_merge_value(conf->upstream.socket_keepalive,
                              prev->upstream.socket_keepalive, 0);

    ngx_conf_merge_uint_value(conf->upstream.next_upstream_tries,
                              prev->upstream.next_upstream_tries, 0);

    ngx_conf_merge_msec_value(conf->upstream.connect_timeout,
                              prev->upstream.connect_timeout, 60000);

    ngx_conf_merge_msec_value(conf->upstream.send_timeout,
                              prev->upstream.send_timeout, 60000);

    ngx_conf_merge_msec_value(conf->upstream.read_timeout,
                              prev->upstream.read_timeout, 60000);

    ngx_conf_merge_msec_value(conf->upstream.next_upstream_timeout,
                              prev->upstream.next_upstream_timeout, 0);

    ngx_conf_merge_size_value(conf->upstream.buffer_size,
                              prev->upstream.buffer_size,
                              (size_t) ngx_pagesize);

    ngx_conf_merge_bitmask_value(conf->upstream.ignore_headers,
                              prev->upstream.ignore_headers,
                              NGX_CONF_BITMASK_SET);

    ngx_conf_merge_bitmask_value(conf->upstream.next_upstream,
                              prev->upstream.next_upstream,
                              (NGX_CONF_BITMASK_SET
                               |NGX_HTTP_UPSTREAM_FT_ERROR
                               |NGX_HTTP_UPSTREAM_FT_TIMEOUT));

    if (conf->upstream.next_upstream & NGX_HTTP_UPSTREAM_FT_OFF) {
        conf->upstream.next_upstream = NGX_CONF_BITMASK_SET
                                       |NGX_HTTP_UPSTREAM_FT_OFF;
    }

    ngx_conf_merge_value(conf->upstream.intercept_errors,
                              prev->upstream.intercept_errors, 0);
    hash.max_size = 512;
    hash.bucket_size = ngx_align(64, ngx_cacheline_size);
    hash.name = "grpc_headers_hash";

    if (ngx_http_upstream_hide_headers_hash(cf, &conf->upstream,
            &prev->upstream, ngx_http_grpc_hide_headers, &hash)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    clcf = ngx_http_conf_get_module_loc_conf(cf, ngx_http_core_module);

    if (clcf->noname && conf->upstream.upstream == ((void*)0)) {
        conf->upstream.upstream = prev->upstream.upstream;
        conf->host = prev->host;



    }

    if (clcf->lmt_excpt && clcf->handler == ((void*)0) && conf->upstream.upstream) {
        clcf->handler = ngx_http_grpc_handler;
    }

    if (conf->headers_source == ((void*)0)) {
        conf->headers = prev->headers;
        conf->headers_source = prev->headers_source;
        conf->host_set = prev->host_set;
    }

    rc = ngx_http_grpc_init_headers(cf, conf, &conf->headers,
                                    ngx_http_grpc_headers);
    if (rc != NGX_OK) {
        return NGX_CONF_ERROR;
    }






    if (prev->headers.hash.buckets == ((void*)0)
        && conf->headers_source == prev->headers_source)
    {
        prev->headers = conf->headers;
        prev->host_set = conf->host_set;
    }

    return NGX_CONF_OK;
}
