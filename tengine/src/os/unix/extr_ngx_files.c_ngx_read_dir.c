
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_4__ {scalar_t__ type; TYPE_2__* de; int dir; } ;
typedef TYPE_1__ ngx_dir_t ;
struct TYPE_5__ {scalar_t__ d_type; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__* readdir (int ) ;

ngx_int_t
ngx_read_dir(ngx_dir_t *dir)
{
    dir->de = readdir(dir->dir);

    if (dir->de) {



        dir->type = 0;

        return NGX_OK;
    }

    return NGX_ERROR;
}
