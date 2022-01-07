
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_13__ {int code; } ;
struct TYPE_14__ {TYPE_2__ action; } ;
struct TYPE_12__ {size_t segment_index; int * segment_data; } ;
struct TYPE_15__ {int state; TYPE_3__ r_ctx; TYPE_1__ file; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_segment_data_t ;


 int NGX_ERROR ;
 int ngx_http_tfs_parse_closefile_message (TYPE_4__*) ;
 int ngx_http_tfs_parse_createfile_message (TYPE_4__*,int *) ;
 int ngx_http_tfs_parse_read_message (TYPE_4__*) ;
 int ngx_http_tfs_parse_remove_message (TYPE_4__*) ;
 int ngx_http_tfs_parse_statfile_message (TYPE_4__*,int *) ;
 int ngx_http_tfs_parse_write_message (TYPE_4__*) ;

ngx_int_t
ngx_http_tfs_data_server_parse_message(ngx_http_tfs_t *t)
{
    ngx_http_tfs_segment_data_t *segment_data;

    segment_data = &t->file.segment_data[t->file.segment_index];

    switch (t->r_ctx.action.code) {
    case 139:
        return ngx_http_tfs_parse_read_message(t);

    case 137:
        return ngx_http_tfs_parse_statfile_message(t, segment_data);

    case 136:
        switch(t->state) {
        case 129:
            return ngx_http_tfs_parse_statfile_message(t, segment_data);
        case 131:
            return ngx_http_tfs_parse_createfile_message(t, segment_data);
        case 128:
            return ngx_http_tfs_parse_write_message(t);
        case 132:
            return ngx_http_tfs_parse_closefile_message(t);
        case 130:
            return ngx_http_tfs_parse_remove_message(t);
        default:
            return NGX_ERROR;
        }

    case 138:
        switch(t->state) {
        case 133:
            return ngx_http_tfs_parse_statfile_message(t, segment_data);
        case 134:
            return ngx_http_tfs_parse_read_message(t);
        case 135:
            return ngx_http_tfs_parse_remove_message(t);
        default:
            return NGX_ERROR;
        }
    }

    return NGX_ERROR;
}
