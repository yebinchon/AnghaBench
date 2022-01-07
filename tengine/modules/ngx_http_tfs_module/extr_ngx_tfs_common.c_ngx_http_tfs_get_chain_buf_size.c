
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {struct TYPE_3__* next; int buf; } ;
typedef TYPE_1__ ngx_chain_t ;


 scalar_t__ ngx_buf_size (int ) ;

uint64_t
ngx_http_tfs_get_chain_buf_size(ngx_chain_t *data)
{
    uint64_t size;
    ngx_chain_t *cl;

    size = 0;
    cl = data;
    while (cl) {
        size += ngx_buf_size(cl->buf);
        cl = cl->next;
    }

    return size;
}
