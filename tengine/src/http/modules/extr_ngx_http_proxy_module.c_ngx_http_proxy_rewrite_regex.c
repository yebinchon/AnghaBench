
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
typedef int ngx_str_t ;
struct TYPE_9__ {int len; int * data; } ;
struct TYPE_10__ {int options; TYPE_2__ err; int pattern; } ;
typedef TYPE_3__ ngx_regex_compile_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int * regex; } ;
struct TYPE_11__ {int handler; TYPE_1__ pattern; } ;
typedef TYPE_4__ ngx_http_proxy_rewrite_t ;
typedef int ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_MAX_CONF_ERRSTR ;
 int NGX_OK ;
 int NGX_REGEX_CASELESS ;
 int ngx_conf_log_error (int ,int *,int ,char*,int *) ;
 int ngx_http_proxy_rewrite_regex_handler ;
 int * ngx_http_regex_compile (int *,TYPE_3__*) ;
 int ngx_memzero (TYPE_3__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_rewrite_regex(ngx_conf_t *cf, ngx_http_proxy_rewrite_t *pr,
    ngx_str_t *regex, ngx_uint_t caseless)
{
    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                       "using regex \"%V\" requires PCRE library", regex);
    return NGX_ERROR;


}
