
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {scalar_t__ code; } ;
struct TYPE_8__ {TYPE_1__ action; } ;
struct TYPE_9__ {TYPE_2__ r_ctx; } ;
typedef TYPE_3__ ngx_http_tfs_t ;


 scalar_t__ NGX_HTTP_TFS_ACTION_KEEPALIVE ;
 int ngx_http_tfs_parse_keepalive_message (TYPE_3__*) ;
 int ngx_http_tfs_parse_login_message (TYPE_3__*) ;

ngx_int_t
ngx_http_tfs_rc_server_parse_message(ngx_http_tfs_t *t)
{
    if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_KEEPALIVE) {
        return ngx_http_tfs_parse_keepalive_message(t);
    }

    return ngx_http_tfs_parse_login_message(t);
}
