
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_17__ {char* data; int len; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_16__ {scalar_t__ init_upstream; } ;
struct TYPE_18__ {int flags; TYPE_3__ peer; } ;
typedef TYPE_5__ ngx_http_upstream_srv_conf_t ;
struct TYPE_15__ {char* src_key; TYPE_4__ src; scalar_t__ handler; } ;
struct TYPE_19__ {TYPE_2__ balancer; } ;
typedef TYPE_6__ ngx_http_lua_srv_conf_t ;
typedef scalar_t__ ngx_http_lua_srv_conf_handler_pt ;
struct TYPE_20__ {int pool; TYPE_1__* args; } ;
typedef TYPE_7__ ngx_conf_t ;
struct TYPE_21__ {int * post; } ;
typedef TYPE_8__ ngx_command_t ;
struct TYPE_14__ {TYPE_4__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_HTTP_LUA_FILE_KEY_LEN ;
 char* NGX_HTTP_LUA_FILE_TAG ;
 int NGX_HTTP_LUA_FILE_TAG_LEN ;
 int NGX_HTTP_LUA_INLINE_KEY_LEN ;
 char* NGX_HTTP_LUA_INLINE_TAG ;
 int NGX_HTTP_LUA_INLINE_TAG_LEN ;
 int NGX_HTTP_UPSTREAM_CREATE ;
 int NGX_HTTP_UPSTREAM_DOWN ;
 int NGX_HTTP_UPSTREAM_FAIL_TIMEOUT ;
 int NGX_HTTP_UPSTREAM_MAX_FAILS ;
 int NGX_HTTP_UPSTREAM_WEIGHT ;
 int NGX_LOG_WARN ;
 int dd (char*) ;
 int ngx_conf_log_error (int ,TYPE_7__*,int ,char*) ;
 char* ngx_copy (char*,char*,int) ;
 TYPE_5__* ngx_http_conf_get_module_srv_conf (TYPE_7__*,int ) ;
 int * ngx_http_lua_balancer_handler_file ;
 scalar_t__ ngx_http_lua_balancer_init ;
 char* ngx_http_lua_digest_hex (char*,char*,int ) ;
 char* ngx_http_lua_rebase_path (int ,char*,int ) ;
 int ngx_http_upstream_module ;
 char* ngx_palloc (int ,int) ;
 int ngx_strlen (char*) ;

char *
ngx_http_lua_balancer_by_lua(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    u_char *p;
    u_char *name;
    ngx_str_t *value;
    ngx_http_lua_srv_conf_t *lscf = conf;

    ngx_http_upstream_srv_conf_t *uscf;

    dd("enter");


    if (cmd->post == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    if (lscf->balancer.handler) {
        return "is duplicate";
    }

    value = cf->args->elts;

    lscf->balancer.handler = (ngx_http_lua_srv_conf_handler_pt) cmd->post;

    if (cmd->post == ngx_http_lua_balancer_handler_file) {


        name = ngx_http_lua_rebase_path(cf->pool, value[1].data,
                                        value[1].len);
        if (name == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        lscf->balancer.src.data = name;
        lscf->balancer.src.len = ngx_strlen(name);

        p = ngx_palloc(cf->pool, NGX_HTTP_LUA_FILE_KEY_LEN + 1);
        if (p == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        lscf->balancer.src_key = p;

        p = ngx_copy(p, NGX_HTTP_LUA_FILE_TAG, NGX_HTTP_LUA_FILE_TAG_LEN);
        p = ngx_http_lua_digest_hex(p, value[1].data, value[1].len);
        *p = '\0';

    } else {


        lscf->balancer.src = value[1];

        p = ngx_palloc(cf->pool,
                       sizeof("balancer_by_lua") + NGX_HTTP_LUA_INLINE_KEY_LEN);
        if (p == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        lscf->balancer.src_key = p;

        p = ngx_copy(p, "balancer_by_lua", sizeof("balancer_by_lua") - 1);
        p = ngx_copy(p, NGX_HTTP_LUA_INLINE_TAG, NGX_HTTP_LUA_INLINE_TAG_LEN);
        p = ngx_http_lua_digest_hex(p, value[1].data, value[1].len);
        *p = '\0';
    }

    uscf = ngx_http_conf_get_module_srv_conf(cf, ngx_http_upstream_module);

    if (uscf->peer.init_upstream) {
        ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                           "load balancing method redefined");
    }

    uscf->peer.init_upstream = ngx_http_lua_balancer_init;

    uscf->flags = NGX_HTTP_UPSTREAM_CREATE
                  |NGX_HTTP_UPSTREAM_WEIGHT
                  |NGX_HTTP_UPSTREAM_MAX_FAILS
                  |NGX_HTTP_UPSTREAM_FAIL_TIMEOUT
                  |NGX_HTTP_UPSTREAM_DOWN;

    return NGX_CONF_OK;
}
