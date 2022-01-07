
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_21__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef int u_short ;
typedef char u_char ;
struct TYPE_34__ {char* data; scalar_t__ len; } ;
struct TYPE_37__ {size_t len; scalar_t__ data; } ;
struct TYPE_38__ {int default_port; int uri_part; int no_resolve; int port; scalar_t__ no_port; int host; TYPE_6__* addrs; TYPE_4__ uri; TYPE_7__ url; int err; } ;
typedef TYPE_8__ ngx_url_t ;
struct TYPE_39__ {int len; scalar_t__ data; } ;
typedef TYPE_9__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_35__ {size_t len; scalar_t__ data; } ;
struct TYPE_25__ {int ssl; TYPE_14__* resolved; TYPE_5__ schema; } ;
typedef TYPE_10__ ngx_http_upstream_t ;
typedef int ngx_http_upstream_resolved_t ;
struct TYPE_26__ {int pool; TYPE_3__* connection; TYPE_10__* upstream; } ;
typedef TYPE_11__ ngx_http_request_t ;
struct TYPE_27__ {TYPE_2__* proxy_values; TYPE_1__* proxy_lengths; } ;
typedef TYPE_12__ ngx_http_proxy_loc_conf_t ;
struct TYPE_31__ {TYPE_5__ key_start; } ;
struct TYPE_28__ {TYPE_21__ vars; } ;
typedef TYPE_13__ ngx_http_proxy_ctx_t ;
typedef scalar_t__ in_port_t ;
struct TYPE_36__ {int name; int socklen; int sockaddr; } ;
struct TYPE_33__ {int log; } ;
struct TYPE_32__ {int elts; } ;
struct TYPE_30__ {int elts; } ;
struct TYPE_29__ {int naddrs; scalar_t__ no_port; scalar_t__ port; int host; int name; int socklen; int sockaddr; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_http_proxy_set_vars (TYPE_8__*,TYPE_21__*) ;
 int * ngx_http_script_run (TYPE_11__*,TYPE_9__*,int ,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_9__*,...) ;
 int ngx_memcpy (char*,char*,scalar_t__) ;
 int ngx_memzero (TYPE_8__*,int) ;
 scalar_t__ ngx_parse_url (int ,TYPE_8__*) ;
 TYPE_14__* ngx_pcalloc (int ,int) ;
 char* ngx_pnalloc (int ,scalar_t__) ;
 scalar_t__ ngx_strncasecmp (scalar_t__,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_eval(ngx_http_request_t *r, ngx_http_proxy_ctx_t *ctx,
    ngx_http_proxy_loc_conf_t *plcf)
{
    u_char *p;
    size_t add;
    u_short port;
    ngx_str_t proxy;
    ngx_url_t url;
    ngx_http_upstream_t *u;

    if (ngx_http_script_run(r, &proxy, plcf->proxy_lengths->elts, 0,
                            plcf->proxy_values->elts)
        == ((void*)0))
    {
        return NGX_ERROR;
    }

    if (proxy.len > 7
        && ngx_strncasecmp(proxy.data, (u_char *) "http://", 7) == 0)
    {
        add = 7;
        port = 80;
    } else {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "invalid URL prefix in \"%V\"", &proxy);
        return NGX_ERROR;
    }

    u = r->upstream;

    u->schema.len = add;
    u->schema.data = proxy.data;

    ngx_memzero(&url, sizeof(ngx_url_t));

    url.url.len = proxy.len - add;
    url.url.data = proxy.data + add;
    url.default_port = port;
    url.uri_part = 1;
    url.no_resolve = 1;

    if (ngx_parse_url(r->pool, &url) != NGX_OK) {
        if (url.err) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "%s in upstream \"%V\"", url.err, &url.url);
        }

        return NGX_ERROR;
    }

    if (url.uri.len) {
        if (url.uri.data[0] == '?') {
            p = ngx_pnalloc(r->pool, url.uri.len + 1);
            if (p == ((void*)0)) {
                return NGX_ERROR;
            }

            *p++ = '/';
            ngx_memcpy(p, url.uri.data, url.uri.len);

            url.uri.len++;
            url.uri.data = p - 1;
        }
    }

    ctx->vars.key_start = u->schema;

    ngx_http_proxy_set_vars(&url, &ctx->vars);

    u->resolved = ngx_pcalloc(r->pool, sizeof(ngx_http_upstream_resolved_t));
    if (u->resolved == ((void*)0)) {
        return NGX_ERROR;
    }

    if (url.addrs) {
        u->resolved->sockaddr = url.addrs[0].sockaddr;
        u->resolved->socklen = url.addrs[0].socklen;
        u->resolved->name = url.addrs[0].name;
        u->resolved->naddrs = 1;
    }

    u->resolved->host = url.host;
    u->resolved->port = (in_port_t) (url.no_port ? port : url.port);
    u->resolved->no_port = url.no_port;

    return NGX_OK;
}
