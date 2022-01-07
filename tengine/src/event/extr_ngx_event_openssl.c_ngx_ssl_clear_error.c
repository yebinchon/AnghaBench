
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;


 int ERR_clear_error () ;
 scalar_t__ ERR_peek_error () ;
 int NGX_LOG_ALERT ;
 int ngx_ssl_error (int ,int *,int ,char*) ;

__attribute__((used)) static void
ngx_ssl_clear_error(ngx_log_t *log)
{
    while (ERR_peek_error()) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0, "ignoring stale global SSL error");
    }

    ERR_clear_error();
}
