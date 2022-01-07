
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ regex_cache_max_entries; scalar_t__ regex_match_limit; scalar_t__ max_pending_timers; scalar_t__ max_running_timers; scalar_t__ set_sa_restart; int malloc_trim_cycle; int cycle; } ;
typedef TYPE_1__ ngx_http_lua_main_conf_t ;
struct TYPE_5__ {int cycle; } ;
typedef TYPE_2__ ngx_conf_t ;


 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET ;
 int NGX_CONF_UNSET_UINT ;

__attribute__((used)) static char *
ngx_http_lua_init_main_conf(ngx_conf_t *cf, void *conf)
{
    ngx_http_lua_main_conf_t *lmcf = conf;
    if (lmcf->max_pending_timers == NGX_CONF_UNSET) {
        lmcf->max_pending_timers = 1024;
    }

    if (lmcf->max_running_timers == NGX_CONF_UNSET) {
        lmcf->max_running_timers = 256;
    }
    lmcf->cycle = cf->cycle;

    return NGX_CONF_OK;
}
