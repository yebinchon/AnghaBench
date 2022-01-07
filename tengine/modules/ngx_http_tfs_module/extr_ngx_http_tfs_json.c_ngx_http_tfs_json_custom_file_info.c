
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int yajl_gen ;
typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef unsigned char const u_char ;
typedef size_t ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int pool; int gen; } ;
typedef TYPE_3__ ngx_http_tfs_json_gen_t ;
struct TYPE_16__ {size_t file_count; TYPE_5__* files; struct TYPE_16__* next; } ;
typedef TYPE_4__ ngx_http_tfs_custom_meta_info_t ;
struct TYPE_14__ {int pid; int id; int size; int ver_no; int modify_time; int create_time; } ;
struct TYPE_13__ {int len; scalar_t__ data; } ;
struct TYPE_17__ {TYPE_2__ file_info; TYPE_1__ file_name; } ;
typedef TYPE_5__ ngx_http_tfs_custom_file_t ;
struct TYPE_18__ {TYPE_7__* buf; int * next; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_19__ {int temporary; int flush; scalar_t__ last; scalar_t__ end; scalar_t__ pos; } ;
typedef TYPE_7__ ngx_buf_t ;


 scalar_t__ NGX_HTTP_TFS_CUSTOM_FT_DIR ;
 int NGX_HTTP_TFS_GMT_TIME_SIZE ;
 TYPE_6__* ngx_alloc_chain_link (int ) ;
 TYPE_7__* ngx_calloc_buf (int ) ;
 int ngx_http_tfs_time (unsigned char const*,int ) ;
 int yajl_gen_array_close (int ) ;
 int yajl_gen_array_open (int ) ;
 int yajl_gen_bool (int ,int) ;
 int yajl_gen_get_buf (int ,unsigned char const**,size_t*) ;
 int yajl_gen_integer (int ,int) ;
 int yajl_gen_map_close (int ) ;
 int yajl_gen_map_open (int ) ;
 int yajl_gen_string (int ,unsigned char const*,int) ;

ngx_chain_t *
ngx_http_tfs_json_custom_file_info(ngx_http_tfs_json_gen_t *tj_gen,
    ngx_http_tfs_custom_meta_info_t *meta_info, uint8_t file_type)
{
    size_t size;
    u_char time_buf[NGX_HTTP_TFS_GMT_TIME_SIZE];
    yajl_gen g;
    uint32_t count;
    ngx_buf_t *b;
    ngx_int_t is_file;
    ngx_uint_t i;
    ngx_chain_t *cl;
    ngx_http_tfs_custom_file_t *file;

    g = tj_gen->gen;
    size = 0;

    if (file_type == NGX_HTTP_TFS_CUSTOM_FT_DIR) {
        yajl_gen_array_open(g);
    }

    for(; meta_info; meta_info = meta_info->next) {
        count = meta_info->file_count;
        file = meta_info->files;

        for (i = 0; i < count; i++) {
            yajl_gen_map_open(g);

            yajl_gen_string(g, (const unsigned char *) "NAME", 4);
            yajl_gen_string(g, (const unsigned char *) file[i].file_name.data,
                            file[i].file_name.len);

            yajl_gen_string(g, (const unsigned char *) "PID", 3);
            yajl_gen_integer(g, file[i].file_info.pid);

            yajl_gen_string(g, (const unsigned char *) "ID", 2);
            yajl_gen_integer(g, file[i].file_info.id);

            yajl_gen_string(g, (const unsigned char *) "SIZE", 4);
            yajl_gen_integer(g, file[i].file_info.size);

            yajl_gen_string(g, (const unsigned char *) "IS_FILE", 7);
            if (file_type == NGX_HTTP_TFS_CUSTOM_FT_DIR) {
                is_file = (file[i].file_info.pid >> 63) & 0x01;
            } else {
                is_file = 1;
            }
            yajl_gen_bool(g, is_file);

            ngx_http_tfs_time(time_buf, file[i].file_info.create_time);
            yajl_gen_string(g, (const unsigned char *) "CREATE_TIME", 11);
            yajl_gen_string(g, time_buf, NGX_HTTP_TFS_GMT_TIME_SIZE);

            ngx_http_tfs_time(time_buf, file[i].file_info.modify_time);
            yajl_gen_string(g, (const unsigned char *) "MODIFY_TIME", 11);
            yajl_gen_string(g, time_buf, NGX_HTTP_TFS_GMT_TIME_SIZE);

            yajl_gen_string(g, (const unsigned char *) "VER_NO", 6);
            yajl_gen_integer(g, file[i].file_info.ver_no);

            yajl_gen_map_close(g);
        }
    }

    if (file_type == NGX_HTTP_TFS_CUSTOM_FT_DIR) {
        yajl_gen_array_close(g);
    }

    cl = ngx_alloc_chain_link(tj_gen->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }
    cl->next = ((void*)0);

    b = ngx_calloc_buf(tj_gen->pool);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    yajl_gen_get_buf(g, (const unsigned char **) &b->pos, &size);
    b->last = b->pos + size;
    b->end = b->last;
    b->temporary = 1;
    b->flush = 1;

    cl->buf = b;

    return cl;
}
