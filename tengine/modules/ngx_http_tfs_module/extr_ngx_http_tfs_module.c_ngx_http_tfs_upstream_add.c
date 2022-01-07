
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct TYPE_16__ {int len; int data; } ;
struct TYPE_18__ {TYPE_13__ host; TYPE_13__ url; scalar_t__ err; } ;
typedef TYPE_1__ ngx_url_t ;
typedef size_t ngx_uint_t ;
struct TYPE_19__ {TYPE_13__ host; } ;
typedef TYPE_2__ ngx_http_tfs_upstream_t ;
struct TYPE_17__ {size_t nelts; TYPE_2__** elts; } ;
struct TYPE_20__ {TYPE_15__ upstreams; } ;
typedef TYPE_3__ ngx_http_tfs_main_conf_t ;
struct TYPE_21__ {int pool; } ;
typedef TYPE_4__ ngx_conf_t ;


 size_t NGX_HTTP_TFS_UPSTREAM_CREATE ;
 size_t NGX_HTTP_TFS_UPSTREAM_FIND ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 TYPE_2__** ngx_array_push (TYPE_15__*) ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,TYPE_13__*,...) ;
 TYPE_3__* ngx_http_conf_get_module_main_conf (TYPE_4__*,int ) ;
 int ngx_http_tfs_module ;
 scalar_t__ ngx_parse_url (int ,TYPE_1__*) ;
 TYPE_2__* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_strncasecmp (int ,int ,int ) ;

ngx_http_tfs_upstream_t *
ngx_http_tfs_upstream_add(ngx_conf_t *cf, ngx_url_t *u, ngx_uint_t flags)
{
    ngx_uint_t i;
    ngx_http_tfs_upstream_t *tu, **tup;
    ngx_http_tfs_main_conf_t *tmcf;

    if (!(flags & NGX_HTTP_TFS_UPSTREAM_CREATE)) {

        if (ngx_parse_url(cf->pool, u) != NGX_OK) {
            if (u->err) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "%s in tfs upstream \"%V\"",
                                   u->err, &u->url);
            }

            return ((void*)0);
        }
    }

    tmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_tfs_module);

    tup = tmcf->upstreams.elts;

    for (i = 0; i < tmcf->upstreams.nelts; i++) {

        if (tup[i]->host.len != u->host.len
            || ngx_strncasecmp(tup[i]->host.data, u->host.data, u->host.len)
               != 0)
        {
            continue;
        }

        if (flags & NGX_HTTP_TFS_UPSTREAM_CREATE)
        {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "duplicate tfs upstream \"%V\"", &u->host);
            return ((void*)0);
        }

        return tup[i];
    }

    if (flags & NGX_HTTP_TFS_UPSTREAM_FIND) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           " host not found in tfs upstream \"%V\"", &u->url);
        return ((void*)0);
    }



    tu = ngx_pcalloc(cf->pool, sizeof(ngx_http_tfs_upstream_t));
    if (tu == ((void*)0)) {
        return ((void*)0);
    }

    tu->host = u->host;

    tup = ngx_array_push(&tmcf->upstreams);
    if (tup == ((void*)0)) {
        return ((void*)0);
    }

    *tup = tu;

    return tu;
}
