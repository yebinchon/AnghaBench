
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int PERL_SYS_TERM () ;
 scalar_t__ nginx_stash ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_perl_term ;
 int perl ;
 int perl_destruct (int ) ;
 int perl_free (int ) ;

__attribute__((used)) static void
ngx_http_perl_exit(ngx_cycle_t *cycle)
{
    if (nginx_stash) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, cycle->log, 0, "perl term");

        (void) perl_destruct(perl);

        perl_free(perl);

        PERL_SYS_TERM();
    }


}
