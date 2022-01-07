
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int socklen_t ;
typedef int ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_9__ {scalar_t__ log_socket_errors; } ;
typedef TYPE_1__ ngx_http_lua_loc_conf_t ;
struct TYPE_10__ {int kq_errno; scalar_t__ pending_eof; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_11__ {int fd; TYPE_2__* read; TYPE_2__* write; } ;
typedef TYPE_3__ ngx_connection_t ;


 int NGX_OK ;
 int NGX_USE_KQUEUE_EVENT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int dd (char*,TYPE_2__*,scalar_t__,TYPE_2__*,scalar_t__) ;
 int getsockopt (int ,int ,int ,void*,int*) ;
 int ngx_connection_error (TYPE_3__*,int,char*) ;
 int ngx_errno ;
 int ngx_event_flags ;
 TYPE_1__* ngx_http_get_module_loc_conf (int *,int ) ;
 int ngx_http_lua_module ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_socket_test_connect(ngx_http_request_t *r, ngx_connection_t *c)
{
    int err;
    socklen_t len;

    ngx_http_lua_loc_conf_t *llcf;
    {
        err = 0;
        len = sizeof(int);






        if (getsockopt(c->fd, SOL_SOCKET, SO_ERROR, (void *) &err, &len)
            == -1)
        {
            err = ngx_errno;
        }

        if (err) {
            llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);
            if (llcf->log_socket_errors) {
                (void) ngx_connection_error(c, err, "connect() failed");
            }
            return err;
        }
    }

    return NGX_OK;
}
