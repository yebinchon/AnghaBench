
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gen; } ;
typedef TYPE_1__ ngx_http_tfs_json_gen_t ;


 int yajl_gen_free (int ) ;

void
ngx_http_tfs_json_destroy(ngx_http_tfs_json_gen_t *tj_gen)
{
    if (tj_gen != ((void*)0)) {
        yajl_gen_free(tj_gen->gen);
    }
}
