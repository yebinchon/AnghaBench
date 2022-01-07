
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {scalar_t__ valid_info; int * dir; } ;
typedef TYPE_2__ ngx_dir_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * opendir (char const*) ;

ngx_int_t
ngx_open_dir(ngx_str_t *name, ngx_dir_t *dir)
{
    dir->dir = opendir((const char *) name->data);

    if (dir->dir == ((void*)0)) {
        return NGX_ERROR;
    }

    dir->valid_info = 0;

    return NGX_OK;
}
