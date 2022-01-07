
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int code; } ;
struct TYPE_8__ {int size; int offset; int file_type; int file_path_s; int file_path_d; TYPE_1__ action; int file_suffix; } ;
struct TYPE_7__ {int left_length; int file_offset; } ;
struct TYPE_9__ {int last_file_pid; TYPE_3__ r_ctx; TYPE_2__ file; int last_file_type; int last_file_path; int file_name; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
void
ngx_http_tfs_set_custom_initial_parameters(ngx_http_tfs_t *t)
{

    t->file_name = t->r_ctx.file_path_s;
    t->r_ctx.file_suffix = t->r_ctx.file_path_d;

    switch(t->r_ctx.action.code) {
    case 135:
    case 134:
        t->last_file_path = t->r_ctx.file_path_s;
        break;

    case 131:
    case 130:
        t->last_file_path = t->r_ctx.file_path_d;
        break;

    case 133:
    case 132:

        t->last_file_path = t->r_ctx.file_path_s;
        t->last_file_pid = -1;
        t->last_file_type = t->r_ctx.file_type;
        break;

    case 129:
    case 128:
        t->file.file_offset = t->r_ctx.offset;
        t->file.left_length = t->r_ctx.size;
        break;
    }
}
