
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code; } ;
struct TYPE_6__ {TYPE_1__ action; } ;
struct TYPE_7__ {int * tfs_peer_servers; int * input_filter; void* process_request_body; void* create_request; int * retry_handler; int state; int * tfs_peer; TYPE_2__ r_ctx; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_peer_connection_t ;







 size_t NGX_HTTP_TFS_DATA_SERVER ;
 size_t NGX_HTTP_TFS_NAME_SERVER ;
 size_t NGX_HTTP_TFS_RC_SERVER ;
 void* ngx_http_tfs_create_ds_request ;
 void* ngx_http_tfs_create_ns_request ;
 void* ngx_http_tfs_create_rcs_request ;
 void* ngx_http_tfs_process_ds ;
 void* ngx_http_tfs_process_ds_input_filter ;
 void* ngx_http_tfs_process_ds_read ;
 void* ngx_http_tfs_process_ns ;
 void* ngx_http_tfs_process_rcs ;
 void* ngx_http_tfs_retry_ds ;
 void* ngx_http_tfs_retry_ns ;

__attribute__((used)) static ngx_http_tfs_peer_connection_t *
ngx_http_tfs_select_peer_v1(ngx_http_tfs_t *t)
{
    switch (t->r_ctx.action.code) {
    case 156:
        switch (t->state) {
        case 143:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 146:
        case 145:
        case 147:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 142:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 144:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds_read;
            t->input_filter = ngx_http_tfs_process_ds_input_filter;
            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 149:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 148:
            return t->tfs_peer;

        default:
            return ((void*)0);
        }
        break;
    case 157:
        switch (t->state) {
        case 150:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 152:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 151:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds_read;
            t->input_filter = ngx_http_tfs_process_ds_input_filter;
            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 153:
            t->input_filter = ((void*)0);
            return t->tfs_peer;

        default:
            return ((void*)0);
        }
        break;
    case 154:
        switch (t->state) {
        case 130:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 132:
        case 131:
        case 137:
        case 133:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 129:
        case 136:
        case 128:
        case 138:
        case 135:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 134:
            t->input_filter = ((void*)0);
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    case 155:
        switch (t->state) {
        case 140:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 141:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 139:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        default:
            return ((void*)0);
        }
        break;

    case 158:
        t->create_request = ngx_http_tfs_create_rcs_request;
        t->process_request_body = ngx_http_tfs_process_rcs;
        t->input_filter = ((void*)0);
        return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

    default:
        break;
    }

    return ((void*)0);
}
