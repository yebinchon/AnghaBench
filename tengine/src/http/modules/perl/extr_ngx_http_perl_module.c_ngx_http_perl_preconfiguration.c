
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {int commands; } ;
typedef TYPE_1__ ngx_http_ssi_main_conf_t ;
typedef int ngx_conf_t ;
struct TYPE_6__ {int name; } ;


 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_ERROR ;
 int NGX_HASH_READONLY_KEY ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,int *,int ,char*,int *) ;
 scalar_t__ ngx_hash_add_key (int *,int *,TYPE_2__*,int ) ;
 TYPE_1__* ngx_http_conf_get_module_main_conf (int *,int ) ;
 TYPE_2__ ngx_http_perl_ssi_command ;
 int ngx_http_ssi_filter_module ;

__attribute__((used)) static ngx_int_t
ngx_http_perl_preconfiguration(ngx_conf_t *cf)
{
    return NGX_OK;
}
