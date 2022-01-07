
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;


 scalar_t__ ngx_exiting ;
 int ngx_http_upstream_check_clear_all_events () ;
 scalar_t__ ngx_quit ;
 scalar_t__ ngx_terminate ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_need_exit()
{
    if (ngx_terminate || ngx_exiting || ngx_quit) {
        ngx_http_upstream_check_clear_all_events();
        return 1;
    }

    return 0;
}
