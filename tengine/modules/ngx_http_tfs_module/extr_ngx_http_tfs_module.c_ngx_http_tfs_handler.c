
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_19__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_37__ {int code; } ;
struct TYPE_31__ {int version; TYPE_6__ action; } ;
struct TYPE_33__ {int * tair_instance; TYPE_9__* data; } ;
struct TYPE_34__ {int curr_lookup_cache; TYPE_2__ remote_ctx; int use_cache; int * local_ctx; } ;
struct TYPE_32__ {scalar_t__ tag; } ;
struct TYPE_40__ {TYPE_19__ r_ctx; TYPE_11__* loc_conf; int header_only; TYPE_3__ block_cache_ctx; TYPE_1__ output; TYPE_10__* main_conf; int * srv_conf; int log; TYPE_12__* data; int pool; } ;
typedef TYPE_9__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_srv_conf_t ;
struct TYPE_28__ {scalar_t__ enable_remote_block_cache; int remote_block_cache_instance; int * local_block_cache_ctx; } ;
typedef TYPE_10__ ngx_http_tfs_main_conf_t ;
struct TYPE_29__ {TYPE_4__* upstream; } ;
typedef TYPE_11__ ngx_http_tfs_loc_conf_t ;
struct TYPE_39__ {int content_length_n; } ;
struct TYPE_30__ {TYPE_8__ headers_out; TYPE_7__* main; TYPE_5__* connection; int header_only; int pool; } ;
typedef TYPE_12__ ngx_http_request_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_38__ {int count; } ;
struct TYPE_36__ {int log; } ;
struct TYPE_35__ {int enable_rcs; } ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_BAD_REQUEST ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_HTTP_TFS_LOCAL_BLOCK_CACHE ;
 int NGX_HTTP_TFS_REMOTE_BLOCK_CACHE ;
 scalar_t__ NGX_HTTP_TFS_YES ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_discard_request_body (TYPE_12__*) ;
 TYPE_11__* ngx_http_get_module_loc_conf (TYPE_12__*,int ) ;
 TYPE_10__* ngx_http_get_module_main_conf (TYPE_12__*,int ) ;
 int * ngx_http_get_module_srv_conf (TYPE_12__*,int ) ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_12__*,int (*) (TYPE_12__*)) ;
 scalar_t__ ngx_http_restful_parse (TYPE_12__*,TYPE_19__*) ;
 int ngx_http_set_ctx (TYPE_12__*,TYPE_9__*,int ) ;
 int ngx_http_tfs_module ;
 int ngx_http_tfs_read_body_handler (TYPE_12__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 TYPE_9__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_tfs_t *t;
    ngx_http_tfs_loc_conf_t *tlcf;
    ngx_http_tfs_srv_conf_t *tscf;
    ngx_http_tfs_main_conf_t *tmcf;

    tlcf = ngx_http_get_module_loc_conf(r, ngx_http_tfs_module);
    tscf = ngx_http_get_module_srv_conf(r, ngx_http_tfs_module);
    tmcf = ngx_http_get_module_main_conf(r, ngx_http_tfs_module);

    t = ngx_pcalloc(r->pool, sizeof(ngx_http_tfs_t));

    if (t == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "alloc ngx_http_tfs_t failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    t->pool = r->pool;
    t->data = r;
    t->log = r->connection->log;
    t->loc_conf = tlcf;
    t->srv_conf = tscf;
    t->main_conf = tmcf;
    t->output.tag = (ngx_buf_tag_t) &ngx_http_tfs_module;
    if (tmcf->local_block_cache_ctx != ((void*)0)) {
        t->block_cache_ctx.use_cache |= NGX_HTTP_TFS_LOCAL_BLOCK_CACHE;
        t->block_cache_ctx.local_ctx = tmcf->local_block_cache_ctx;
    }
    if (tmcf->enable_remote_block_cache == NGX_HTTP_TFS_YES) {
        t->block_cache_ctx.use_cache |= NGX_HTTP_TFS_REMOTE_BLOCK_CACHE;
    }
    t->block_cache_ctx.remote_ctx.data = t;
    t->block_cache_ctx.remote_ctx.tair_instance =
                                             &tmcf->remote_block_cache_instance;
    t->block_cache_ctx.curr_lookup_cache = NGX_HTTP_TFS_LOCAL_BLOCK_CACHE;

    rc = ngx_http_restful_parse(r, &t->r_ctx);
    if (rc != NGX_OK) {
        return rc;
    }

    t->header_only = r->header_only;

    if (!t->loc_conf->upstream->enable_rcs && t->r_ctx.version == 2) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "custom file requires tfs_enable_rcs on,"
                      " and make sure you have MetaServer and RootServer!");
        return NGX_HTTP_BAD_REQUEST;
    }

    switch (t->r_ctx.action.code) {
    case 140:
    case 139:
    case 131:
    case 130:
    case 134:
    case 133:
    case 136:
    case 135:
    case 129:
    case 137:
    case 132:
    case 138:
        rc = ngx_http_discard_request_body(r);

        if (rc != NGX_OK) {
            return rc;
        }

        r->headers_out.content_length_n = -1;
        ngx_http_set_ctx(r, t, ngx_http_tfs_module);
        r->main->count++;
        ngx_http_tfs_read_body_handler(r);
        break;
    case 128:
        r->headers_out.content_length_n = -1;
        ngx_http_set_ctx(r, t, ngx_http_tfs_module);
        rc = ngx_http_read_client_request_body(r,
                                               ngx_http_tfs_read_body_handler);
        if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
            return rc;
        }
        break;
    }

    return NGX_DONE;
}
