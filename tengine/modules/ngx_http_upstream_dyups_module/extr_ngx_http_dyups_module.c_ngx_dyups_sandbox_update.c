
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int ngx_dyups_do_delete (int *,int *) ;
 int ngx_dyups_do_update (int *,int *,int *) ;
 int ngx_string (char*) ;

__attribute__((used)) static ngx_int_t
ngx_dyups_sandbox_update(ngx_buf_t *buf, ngx_str_t *rv)
{
    ngx_int_t rc;
    ngx_str_t dumy;

    ngx_str_t sandbox = ngx_string("_dyups_upstream_sandbox_");

    rc = ngx_dyups_do_update(&sandbox, buf, rv);

    (void) ngx_dyups_do_delete(&sandbox, &dumy);

    return rc;
}
