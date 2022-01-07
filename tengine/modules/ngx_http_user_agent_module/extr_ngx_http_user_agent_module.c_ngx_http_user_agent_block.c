
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_17__ {uintptr_t data; int get_handler; } ;
typedef TYPE_3__ ngx_http_variable_t ;
struct TYPE_18__ {int * default_value; TYPE_6__* trie; int pool; } ;
typedef TYPE_4__ ngx_http_user_agent_ctx_t ;
struct TYPE_19__ {void* handler_conf; int handler; TYPE_4__* ctx; int pool; TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_20__ {scalar_t__ (* build_clue ) (TYPE_6__*) ;} ;
struct TYPE_15__ {TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 int NGX_HTTP_VAR_CHANGEABLE ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*) ;
 char* ngx_conf_parse (TYPE_5__*,int *) ;
 TYPE_3__* ngx_http_add_variable (TYPE_5__*,TYPE_2__*,int ) ;
 int ngx_http_user_agent ;
 int ngx_http_user_agent_variable ;
 TYPE_4__* ngx_palloc (int ,int) ;
 TYPE_6__* ngx_trie_create (int ) ;
 scalar_t__ stub1 (TYPE_6__*) ;

__attribute__((used)) static char *
ngx_http_user_agent_block(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    ngx_str_t *value, name;
    ngx_conf_t save;
    ngx_http_variable_t *var;
    ngx_http_user_agent_ctx_t *ctx;

    value = cf->args->elts;

    name = value[1];
    name.data++;
    name.len--;

    var = ngx_http_add_variable(cf, &name, NGX_HTTP_VAR_CHANGEABLE);
    if (var == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ctx = ngx_palloc(cf->pool, sizeof(ngx_http_user_agent_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ctx->pool = cf->pool;
    ctx->trie = ngx_trie_create(ctx->pool);
    if (ctx->trie == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ctx->default_value = ((void*)0);

    var->get_handler = ngx_http_user_agent_variable;
    var->data = (uintptr_t) ctx;

    save = *cf;
    cf->ctx = ctx;
    cf->handler = ngx_http_user_agent;
    cf->handler_conf = conf;

    rv = ngx_conf_parse(cf, ((void*)0));
    if (NGX_OK != ctx->trie->build_clue(ctx->trie)) {
        return NGX_CONF_ERROR;
    }

    *cf = save;
    if (ctx->default_value == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0, "no default value");
        rv = NGX_CONF_ERROR;
    }

    return rv;
}
