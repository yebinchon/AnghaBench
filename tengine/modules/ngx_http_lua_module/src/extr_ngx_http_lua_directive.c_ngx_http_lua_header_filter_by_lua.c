
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_18__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_19__ {int requires_header_filter; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_17__ {int * lengths; TYPE_3__ value; } ;
struct TYPE_20__ {char* header_filter_src_key; scalar_t__ header_filter_handler; TYPE_2__ header_filter_src; } ;
typedef TYPE_5__ ngx_http_lua_loc_conf_t ;
typedef scalar_t__ ngx_http_handler_pt ;
struct TYPE_21__ {TYPE_2__* complex_value; TYPE_3__* value; TYPE_7__* cf; } ;
typedef TYPE_6__ ngx_http_compile_complex_value_t ;
struct TYPE_22__ {int pool; TYPE_1__* args; } ;
typedef TYPE_7__ ngx_conf_t ;
struct TYPE_23__ {int * post; } ;
typedef TYPE_8__ ngx_command_t ;
struct TYPE_16__ {TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_HTTP_LUA_FILE_KEY_LEN ;
 char* NGX_HTTP_LUA_FILE_TAG ;
 int NGX_HTTP_LUA_FILE_TAG_LEN ;
 int NGX_HTTP_LUA_INLINE_KEY_LEN ;
 char* NGX_HTTP_LUA_INLINE_TAG ;
 int NGX_HTTP_LUA_INLINE_TAG_LEN ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int dd (char*) ;
 int ngx_conf_log_error (int ,TYPE_7__*,int ,char*) ;
 char* ngx_copy (char*,char*,int) ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_6__*) ;
 TYPE_4__* ngx_http_conf_get_module_main_conf (TYPE_7__*,int ) ;
 char* ngx_http_lua_digest_hex (char*,int ,scalar_t__) ;
 int * ngx_http_lua_header_filter_inline ;
 int ngx_http_lua_module ;
 int ngx_memzero (TYPE_6__*,int) ;
 char* ngx_palloc (int ,int) ;

char *
ngx_http_lua_header_filter_by_lua(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    u_char *p;
    ngx_str_t *value;
    ngx_http_lua_main_conf_t *lmcf;
    ngx_http_lua_loc_conf_t *llcf = conf;

    ngx_http_compile_complex_value_t ccv;

    dd("enter");


    if (cmd->post == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    if (llcf->header_filter_handler) {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (value[1].len == 0) {

        ngx_conf_log_error(NGX_LOG_ERR, cf, 0,
                           "invalid location config: no runnable Lua code");
        return NGX_CONF_ERROR;
    }

    if (cmd->post == ngx_http_lua_header_filter_inline) {

        llcf->header_filter_src.value = value[1];

        p = ngx_palloc(cf->pool,
                       sizeof("header_filter_by_lua") +
                       NGX_HTTP_LUA_INLINE_KEY_LEN + 1);
        if (p == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        llcf->header_filter_src_key = p;

        p = ngx_copy(p, "header_filter_by_lua",
                     sizeof("header_filter_by_lua") - 1);
        p = ngx_copy(p, NGX_HTTP_LUA_INLINE_TAG, NGX_HTTP_LUA_INLINE_TAG_LEN);
        p = ngx_http_lua_digest_hex(p, value[1].data, value[1].len);
        *p = '\0';

    } else {
        ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));
        ccv.cf = cf;
        ccv.value = &value[1];
        ccv.complex_value = &llcf->header_filter_src;

        if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

        if (llcf->header_filter_src.lengths == ((void*)0)) {

            p = ngx_palloc(cf->pool, NGX_HTTP_LUA_FILE_KEY_LEN + 1);
            if (p == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            llcf->header_filter_src_key = p;

            p = ngx_copy(p, NGX_HTTP_LUA_FILE_TAG, NGX_HTTP_LUA_FILE_TAG_LEN);
            p = ngx_http_lua_digest_hex(p, value[1].data, value[1].len);
            *p = '\0';
        }
    }

    llcf->header_filter_handler = (ngx_http_handler_pt) cmd->post;

    lmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_lua_module);

    lmcf->requires_header_filter = 1;

    return NGX_CONF_OK;
}
