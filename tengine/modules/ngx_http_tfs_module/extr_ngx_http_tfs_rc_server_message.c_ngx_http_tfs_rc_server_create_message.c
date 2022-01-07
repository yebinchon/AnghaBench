
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int code; } ;
struct TYPE_8__ {TYPE_1__ action; } ;
struct TYPE_9__ {TYPE_2__ r_ctx; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
typedef int ngx_chain_t ;



 int * ngx_http_tfs_create_keepalive_message (TYPE_3__*) ;
 int * ngx_http_tfs_create_login_message (TYPE_3__*) ;

ngx_chain_t *
ngx_http_tfs_rc_server_create_message(ngx_http_tfs_t *t)
{
    uint16_t msg_type;

    msg_type = t->r_ctx.action.code;

    switch(msg_type) {
    case 128:
        return ngx_http_tfs_create_keepalive_message(t);
    default:
        return ngx_http_tfs_create_login_message(t);
    }
}
