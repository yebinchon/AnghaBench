
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_17__ {int len; } ;
struct TYPE_13__ {int code; } ;
struct TYPE_15__ {TYPE_5__ file_path_s; TYPE_1__ action; } ;
struct TYPE_14__ {int left_length; int file_offset; } ;
struct TYPE_16__ {int * json_output; int pool; int log; TYPE_3__ r_ctx; TYPE_2__ file; int state; TYPE_5__ last_file_path; int last_dir_level; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
typedef int ngx_chain_t ;
 int NGX_LOG_DEBUG ;
 int * ngx_http_tfs_create_action_message (TYPE_4__*,TYPE_5__*,TYPE_5__*) ;
 int * ngx_http_tfs_create_ls_message (TYPE_4__*) ;
 int * ngx_http_tfs_create_read_meta_message (TYPE_4__*,int ,int ) ;
 int * ngx_http_tfs_create_write_meta_message (TYPE_4__*) ;
 int * ngx_http_tfs_json_init (int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ,TYPE_5__*) ;

ngx_chain_t *
ngx_http_tfs_meta_server_create_message(ngx_http_tfs_t *t)
{
    uint16_t msg_type;
    ngx_chain_t *cl;

    cl = ((void*)0);
    msg_type = t->r_ctx.action.code;

    switch (msg_type) {

    case 141:
    case 140:
        ngx_log_error(NGX_LOG_DEBUG, t->log, 0,
                      "will create path: "
                      "last_dir_level: %i, dir_len: %i, last_file_path: %V",
                      t->last_dir_level,
                      t->last_file_path.len,
                      &t->last_file_path);
        cl = ngx_http_tfs_create_action_message(t, &t->last_file_path, ((void*)0));
        break;

    case 137:
    case 136:
        cl = ngx_http_tfs_create_action_message(t, &t->r_ctx.file_path_s,
                                                &t->last_file_path);
        break;

    case 134:
        cl = ngx_http_tfs_create_action_message(t, &t->r_ctx.file_path_s, ((void*)0));
        break;

    case 135:
        cl = ngx_http_tfs_create_read_meta_message(t, t->file.file_offset,
                                                   t->file.left_length);
        break;

    case 132:
        switch (t->state) {
        case 129:
            cl = ngx_http_tfs_create_read_meta_message(t, 0, 0);
            break;
        case 128:
            cl = ngx_http_tfs_create_write_meta_message(t);
            break;
        }
        break;

    case 133:
        switch (t->state) {
        case 131:
            cl = ngx_http_tfs_create_read_meta_message(t, t->file.file_offset,
                                                       t->file.left_length);
            break;
        case 130:
            cl = ngx_http_tfs_create_action_message(t, &t->r_ctx.file_path_s,
                                                    ((void*)0));
            break;
        }
        break;

    case 139:
    case 138:
        t->json_output = ngx_http_tfs_json_init(t->log, t->pool);
        if (t->json_output == ((void*)0)) {
            return ((void*)0);
        }
        cl = ngx_http_tfs_create_ls_message(t);
        break;
    }

    return cl;
}
