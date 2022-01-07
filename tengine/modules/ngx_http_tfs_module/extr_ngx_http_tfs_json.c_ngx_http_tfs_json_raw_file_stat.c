
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int yajl_gen ;
typedef int uint32_t ;
typedef unsigned char const u_char ;
struct TYPE_10__ {int crc; int flag; int create_time; int modify_time; int u_size; int size; int offset; int id; } ;
typedef TYPE_1__ ngx_http_tfs_raw_file_stat_t ;
struct TYPE_11__ {int pool; int gen; } ;
typedef TYPE_2__ ngx_http_tfs_json_gen_t ;
struct TYPE_12__ {TYPE_4__* buf; int * next; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_13__ {int temporary; int flush; scalar_t__ last; scalar_t__ end; scalar_t__ pos; } ;
typedef TYPE_4__ ngx_buf_t ;


 int NGX_HTTP_TFS_GMT_TIME_SIZE ;
 TYPE_3__* ngx_alloc_chain_link (int ) ;
 TYPE_4__* ngx_calloc_buf (int ) ;
 int ngx_http_tfs_time (unsigned char const*,int ) ;
 int yajl_gen_get_buf (int ,unsigned char const**,size_t*) ;
 int yajl_gen_integer (int ,int ) ;
 int yajl_gen_map_close (int ) ;
 int yajl_gen_map_open (int ) ;
 int yajl_gen_string (int ,unsigned char const*,int) ;

ngx_chain_t *
ngx_http_tfs_json_raw_file_stat(ngx_http_tfs_json_gen_t *tj_gen,
    u_char* file_name, uint32_t block_id,
    ngx_http_tfs_raw_file_stat_t *file_stat)
{
    size_t size;
    u_char time_buf[NGX_HTTP_TFS_GMT_TIME_SIZE];
    yajl_gen g;
    ngx_buf_t *b;
    ngx_chain_t *cl;

    g = tj_gen->gen;
    size = 0;

    yajl_gen_map_open(g);

    yajl_gen_string(g, (const unsigned char *) "FILE_NAME", 9);
    yajl_gen_string(g, (const unsigned char *) file_name, 18);

    yajl_gen_string(g, (const unsigned char *) "BLOCK_ID", 8);
    yajl_gen_integer(g, block_id);

    yajl_gen_string(g, (const unsigned char *) "FILE_ID", 7);
    yajl_gen_integer(g, file_stat->id);

    yajl_gen_string(g, (const unsigned char *) "OFFSET", 6);
    yajl_gen_integer(g, file_stat->offset);

    yajl_gen_string(g, (const unsigned char *) "SIZE", 4);
    yajl_gen_integer(g, file_stat->size);

    yajl_gen_string(g, (const unsigned char *) "OCCUPY_SIZE", 11);
    yajl_gen_integer(g, file_stat->u_size);

    ngx_http_tfs_time(time_buf, file_stat->modify_time);
    yajl_gen_string(g, (const unsigned char *) "MODIFY_TIME", 11);
    yajl_gen_string(g, time_buf, NGX_HTTP_TFS_GMT_TIME_SIZE);

    ngx_http_tfs_time(time_buf, file_stat->create_time);
    yajl_gen_string(g, (const unsigned char *) "CREATE_TIME", 11);
    yajl_gen_string(g, time_buf, NGX_HTTP_TFS_GMT_TIME_SIZE);

    yajl_gen_string(g, (const unsigned char *) "STATUS", 6);
    yajl_gen_integer(g, file_stat->flag);

    yajl_gen_string(g, (const unsigned char *) "CRC", 3);
    yajl_gen_integer(g, file_stat->crc);

    yajl_gen_map_close(g);

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
