
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {size_t len; int * data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {scalar_t__* gl_pathv; scalar_t__ gl_matchc; scalar_t__ gl_pathc; } ;
struct TYPE_8__ {size_t n; TYPE_1__ pglob; } ;
typedef TYPE_3__ ngx_glob_t ;


 int NGX_DONE ;
 int NGX_OK ;
 scalar_t__ ngx_strlen (scalar_t__) ;

ngx_int_t
ngx_read_glob(ngx_glob_t *gl, ngx_str_t *name)
{
    size_t count;




    count = (size_t) gl->pglob.gl_matchc;


    if (gl->n < count) {

        name->len = (size_t) ngx_strlen(gl->pglob.gl_pathv[gl->n]);
        name->data = (u_char *) gl->pglob.gl_pathv[gl->n];
        gl->n++;

        return NGX_OK;
    }

    return NGX_DONE;
}
