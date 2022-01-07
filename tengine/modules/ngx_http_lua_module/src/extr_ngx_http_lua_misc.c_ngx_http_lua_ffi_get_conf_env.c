
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_6__ {char* data; size_t len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_5__ {size_t nelts; TYPE_2__* elts; } ;
struct TYPE_7__ {TYPE_1__ env; } ;
typedef TYPE_3__ ngx_core_conf_t ;
struct TYPE_8__ {int conf_ctx; } ;


 int NGX_DECLINED ;
 int NGX_OK ;
 int ngx_core_module ;
 TYPE_4__* ngx_cycle ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 scalar_t__ ngx_strncmp (char*,char*,size_t) ;

int
ngx_http_lua_ffi_get_conf_env(u_char *name, u_char **env_buf, size_t *name_len)
{
    ngx_uint_t i;
    ngx_str_t *var;
    ngx_core_conf_t *ccf;

    ccf = (ngx_core_conf_t *) ngx_get_conf(ngx_cycle->conf_ctx,
                                           ngx_core_module);

    var = ccf->env.elts;

    for (i = 0; i < ccf->env.nelts; i++) {
        if (var[i].data[var[i].len] == '='
            && ngx_strncmp(name, var[i].data, var[i].len) == 0)
        {
            *env_buf = var[i].data;
            *name_len = var[i].len;

            return NGX_OK;
        }
    }

    return NGX_DECLINED;
}
