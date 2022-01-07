
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int code; } ;
struct TYPE_10__ {TYPE_1__ action; } ;
struct TYPE_11__ {int state; TYPE_2__ r_ctx; } ;
typedef TYPE_3__ ngx_http_tfs_t ;


 int NGX_ERROR ;
 int ngx_http_tfs_parse_action_message (TYPE_3__*) ;
 int ngx_http_tfs_parse_ls_message (TYPE_3__*) ;
 int ngx_http_tfs_parse_read_meta_message (TYPE_3__*) ;
 int ngx_http_tfs_parse_write_meta_message (TYPE_3__*) ;

ngx_int_t
ngx_http_tfs_meta_server_parse_message(ngx_http_tfs_t *t)
{
    uint16_t action;

    action = t->r_ctx.action.code;

    switch (action) {

    case 141:
    case 140:
    case 134:
    case 137:
    case 136:
        return ngx_http_tfs_parse_action_message(t);

    case 133:
        switch (t->state) {
        case 131:
            return ngx_http_tfs_parse_read_meta_message(t);
        case 130:
            return ngx_http_tfs_parse_action_message(t);
        default:
            return NGX_ERROR;
        }

    case 139:
    case 138:
        return ngx_http_tfs_parse_ls_message(t);

    case 135:
        return ngx_http_tfs_parse_read_meta_message(t);

    case 132:
        switch (t->state) {
        case 129:
            return ngx_http_tfs_parse_read_meta_message(t);

        case 128:
            return ngx_http_tfs_parse_write_meta_message(t);

        default:
            return NGX_ERROR;
        }
    default:
        return NGX_ERROR;
    }

    return NGX_ERROR;
}
