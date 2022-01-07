
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_3__ {scalar_t__ test; int pglob; scalar_t__ pattern; } ;
typedef TYPE_1__ ngx_glob_t ;


 int GLOB_NOMATCH ;
 int NGX_ERROR ;
 int NGX_OK ;
 int glob (char*,int ,int *,int *) ;

ngx_int_t
ngx_open_glob(ngx_glob_t *gl)
{
    int n;

    n = glob((char *) gl->pattern, 0, ((void*)0), &gl->pglob);

    if (n == 0) {
        return NGX_OK;
    }
    return NGX_ERROR;
}
