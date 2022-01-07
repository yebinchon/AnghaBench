
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code; } ;
struct TYPE_6__ {TYPE_1__ action; } ;
struct TYPE_7__ {int * tfs_peer; int * input_filter; int * tfs_peer_servers; void* process_request_body; TYPE_2__ r_ctx; void* create_request; int state; int * retry_handler; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_peer_connection_t ;
 size_t NGX_HTTP_TFS_DATA_SERVER ;
 size_t NGX_HTTP_TFS_META_SERVER ;
 size_t NGX_HTTP_TFS_NAME_SERVER ;
 size_t NGX_HTTP_TFS_RC_SERVER ;
 size_t NGX_HTTP_TFS_ROOT_SERVER ;
 void* ngx_http_tfs_create_ds_request ;
 void* ngx_http_tfs_create_ms_request ;
 void* ngx_http_tfs_create_ns_request ;
 void* ngx_http_tfs_create_rcs_request ;
 void* ngx_http_tfs_create_rs_request ;
 void* ngx_http_tfs_process_ds ;
 int * ngx_http_tfs_process_ds_input_filter ;
 void* ngx_http_tfs_process_ds_read ;
 void* ngx_http_tfs_process_ms ;
 int * ngx_http_tfs_process_ms_input_filter ;
 void* ngx_http_tfs_process_ms_ls_dir ;
 void* ngx_http_tfs_process_ns ;
 void* ngx_http_tfs_process_rcs ;
 void* ngx_http_tfs_process_rs ;
 void* ngx_http_tfs_retry_ds ;
 void* ngx_http_tfs_retry_ns ;

__attribute__((used)) static ngx_http_tfs_peer_connection_t *
ngx_http_tfs_select_peer_v2(ngx_http_tfs_t *t)
{
    switch (t->r_ctx.action.code) {
    case 165:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

    case 158:
        switch (t->state) {
        case 138:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 140:
            t->create_request = ngx_http_tfs_create_rs_request;
            t->process_request_body = ngx_http_tfs_process_rs;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];

        case 139:
        case 143:
            t->create_request = ngx_http_tfs_create_ms_request;
            t->process_request_body = ngx_http_tfs_process_ms;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];

        case 142:
        case 141:
        case 144:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 146:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 145:
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    case 160:
        switch (t->state) {
        case 147:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 149:
            t->create_request = ngx_http_tfs_create_rs_request;
            t->process_request_body = ngx_http_tfs_process_rs;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];

        case 150:
            t->create_request = ngx_http_tfs_create_ms_request;
            t->process_request_body = ngx_http_tfs_process_ms;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];

        case 151:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 148:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds_read;
            t->input_filter = ngx_http_tfs_process_ds_input_filter;
            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 152:
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    case 157:
        switch (t->state) {
        case 130:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 131:
            t->create_request = ngx_http_tfs_create_rs_request;
            t->process_request_body = ngx_http_tfs_process_rs;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];

        case 136:
        case 128:
            t->create_request = ngx_http_tfs_create_ms_request;
            t->process_request_body = ngx_http_tfs_process_ms;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];

        case 135:
        case 132:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 134:
        case 129:
        case 137:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds;
            t->input_filter = ((void*)0);

            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 133:
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    case 166:
    case 167:
    case 163:
    case 164:
    case 162:
    case 161:
    case 159:
        switch (t->state) {
        case 153:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 155:
            t->create_request = ngx_http_tfs_create_rs_request;
            t->process_request_body = ngx_http_tfs_process_rs;
            t->input_filter = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];

        case 154:
            t->create_request = ngx_http_tfs_create_ms_request;
            if (t->r_ctx.action.code == 164) {
                t->process_request_body = ngx_http_tfs_process_ms_ls_dir;
                t->input_filter = ngx_http_tfs_process_ms_input_filter;
            } else {
                t->process_request_body = ngx_http_tfs_process_ms;
                t->input_filter = ((void*)0);
            }
            return &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];

        case 156:
            t->input_filter = ((void*)0);
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    default:
        break;
    }

    return ((void*)0);
}
