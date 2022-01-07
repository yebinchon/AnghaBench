
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int uri; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_8__ {TYPE_2__* request; } ;
typedef TYPE_3__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_6__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_lua_socket_udp_finalize (TYPE_2__*,TYPE_3__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;

__attribute__((used)) static void
ngx_http_lua_socket_udp_cleanup(void *data)
{
    ngx_http_lua_socket_udp_upstream_t *u = data;

    ngx_http_request_t *r;

    r = u->request;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "cleanup lua udp socket upstream request: \"%V\"", &r->uri);

    ngx_http_lua_socket_udp_finalize(r, u);
}
