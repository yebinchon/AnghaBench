
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {TYPE_10__* write; TYPE_10__* read; scalar_t__ fd; } ;
struct TYPE_15__ {int * data; } ;
struct TYPE_16__ {int * sockaddr; } ;
struct TYPE_18__ {void* facility; void* severity; TYPE_2__ conn; TYPE_11__ tag; TYPE_1__ server; } ;
typedef TYPE_3__ ngx_syslog_peer_t ;
typedef scalar_t__ ngx_socket_t ;
struct TYPE_19__ {int handler; TYPE_3__* data; } ;
typedef TYPE_4__ ngx_pool_cleanup_t ;
struct TYPE_20__ {int pool; } ;
typedef TYPE_5__ ngx_conf_t ;
struct TYPE_14__ {int * log; } ;


 char* NGX_CONF_ERROR ;
 scalar_t__ NGX_CONF_OK ;
 void* NGX_CONF_UNSET_UINT ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*) ;
 TYPE_4__* ngx_pool_cleanup_add (int ,int ) ;
 int ngx_str_set (TYPE_11__*,char*) ;
 int ngx_syslog_cleanup ;
 TYPE_10__ ngx_syslog_dummy_event ;
 int ngx_syslog_dummy_log ;
 scalar_t__ ngx_syslog_parse_args (TYPE_5__*,TYPE_3__*) ;

char *
ngx_syslog_process_conf(ngx_conf_t *cf, ngx_syslog_peer_t *peer)
{
    ngx_pool_cleanup_t *cln;

    peer->facility = NGX_CONF_UNSET_UINT;
    peer->severity = NGX_CONF_UNSET_UINT;

    if (ngx_syslog_parse_args(cf, peer) != NGX_CONF_OK) {
        return NGX_CONF_ERROR;
    }

    if (peer->server.sockaddr == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "no syslog server specified");
        return NGX_CONF_ERROR;
    }

    if (peer->facility == NGX_CONF_UNSET_UINT) {
        peer->facility = 23;
    }

    if (peer->severity == NGX_CONF_UNSET_UINT) {
        peer->severity = 6;
    }

    if (peer->tag.data == ((void*)0)) {
        ngx_str_set(&peer->tag, "nginx");
    }

    peer->conn.fd = (ngx_socket_t) -1;

    peer->conn.read = &ngx_syslog_dummy_event;
    peer->conn.write = &ngx_syslog_dummy_event;

    ngx_syslog_dummy_event.log = &ngx_syslog_dummy_log;

    cln = ngx_pool_cleanup_add(cf->pool, 0);
    if (cln == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    cln->data = peer;
    cln->handler = ngx_syslog_cleanup;

    return NGX_CONF_OK;
}
