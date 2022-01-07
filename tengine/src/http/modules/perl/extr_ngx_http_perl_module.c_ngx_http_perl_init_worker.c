
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_3__ {int perl; } ;
typedef TYPE_1__ ngx_http_perl_main_conf_t ;
typedef int ngx_cycle_t ;
typedef int I32 ;


 int GvSV (int ) ;
 int NGX_OK ;
 int PERL_SET_CONTEXT (int ) ;
 int PERL_SET_INTERP (int ) ;
 int SVt_PV ;
 int TRUE ;
 int dTHXa (int ) ;
 int gv_fetchpv (char*,int ,int ) ;
 TYPE_1__* ngx_http_cycle_get_module_main_conf (int *,int ) ;
 int ngx_http_perl_module ;
 scalar_t__ ngx_pid ;
 int sv_setiv (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_perl_init_worker(ngx_cycle_t *cycle)
{
    ngx_http_perl_main_conf_t *pmcf;

    pmcf = ngx_http_cycle_get_module_main_conf(cycle, ngx_http_perl_module);

    if (pmcf) {
        dTHXa(pmcf->perl);
        PERL_SET_CONTEXT(pmcf->perl);
        PERL_SET_INTERP(pmcf->perl);



        sv_setiv(GvSV(gv_fetchpv("$", TRUE, SVt_PV)), (I32) ngx_pid);
    }

    return NGX_OK;
}
