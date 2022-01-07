
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int yajl_gen ;
struct TYPE_10__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_11__ {int pool; int gen; } ;
typedef TYPE_2__ ngx_http_tfs_json_gen_t ;
struct TYPE_12__ {TYPE_4__* buf; int * next; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_13__ {int temporary; int flush; scalar_t__ last; scalar_t__ end; scalar_t__ pos; } ;
typedef TYPE_4__ ngx_buf_t ;


 TYPE_3__* ngx_alloc_chain_link (int ) ;
 TYPE_4__* ngx_calloc_buf (int ) ;
 int yajl_gen_get_buf (int ,unsigned char const**,size_t*) ;
 int yajl_gen_map_close (int ) ;
 int yajl_gen_map_open (int ) ;
 int yajl_gen_string (int ,unsigned char const*,int) ;

ngx_chain_t *
ngx_http_tfs_json_file_name(ngx_http_tfs_json_gen_t *tj_gen,
    ngx_str_t *file_name)
{
    size_t size;
    yajl_gen g;
    ngx_buf_t *b;
    ngx_chain_t *cl;

    g = tj_gen->gen;
    size = 0;

    yajl_gen_map_open(g);
    yajl_gen_string(g, (const unsigned char *) "TFS_FILE_NAME", 13);
    yajl_gen_string(g, (const unsigned char *) file_name->data, file_name->len);
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
