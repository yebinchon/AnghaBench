
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pglob; } ;
typedef TYPE_1__ ngx_glob_t ;


 int globfree (int *) ;

void
ngx_close_glob(ngx_glob_t *gl)
{
    globfree(&gl->pglob);
}
