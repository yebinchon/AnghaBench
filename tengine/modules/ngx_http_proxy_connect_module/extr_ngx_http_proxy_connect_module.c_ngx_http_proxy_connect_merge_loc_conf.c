
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int local; int * address; int buffer_size; int send_lowat; int read_timeout; int send_timeout; int connect_timeout; int allow_ports; int allow_port_all; int accept_connect; } ;
typedef TYPE_1__ ngx_http_proxy_connect_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_ptr_value (int ,int ,int *) ;
 int ngx_conf_merge_size_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_http_proxy_connect_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_proxy_connect_loc_conf_t *prev = parent;
    ngx_http_proxy_connect_loc_conf_t *conf = child;

    ngx_conf_merge_value(conf->accept_connect, prev->accept_connect, 0);
    ngx_conf_merge_value(conf->allow_port_all, prev->allow_port_all, 0);
    ngx_conf_merge_ptr_value(conf->allow_ports, prev->allow_ports, ((void*)0));

    ngx_conf_merge_msec_value(conf->connect_timeout,
                              prev->connect_timeout, 60000);

    ngx_conf_merge_msec_value(conf->send_timeout, prev->send_timeout, 60000);

    ngx_conf_merge_msec_value(conf->read_timeout, prev->read_timeout, 60000);

    ngx_conf_merge_size_value(conf->send_lowat, prev->send_lowat, 0);

    ngx_conf_merge_size_value(conf->buffer_size, prev->buffer_size, 16384);

    if (conf->address == ((void*)0)) {
        conf->address = prev->address;
    }

    ngx_conf_merge_ptr_value(conf->local, prev->local, ((void*)0));

    return NGX_CONF_OK;
}
