
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int scan_tuner_config_t ;
struct TYPE_10__ {int type; int b_use_nit; } ;
struct TYPE_12__ {TYPE_2__ parameter; int p_obj; } ;
typedef TYPE_4__ scan_t ;
struct TYPE_11__ {int * pp_sdt; int * pp_nit; scalar_t__ i_sdt; scalar_t__ i_nit; } ;
struct TYPE_9__ {int * p_nit; int * p_sdt; int * p_pat; } ;
struct TYPE_13__ {int i_snr; int i_nit_pid; int * p_nithandle; int * p_sdthandle; int * p_pathandle; TYPE_3__ others; int type; int b_use_nit; TYPE_1__ local; int cfg; int p_obj; } ;
typedef TYPE_5__ scan_session_t ;


 TYPE_5__* malloc (int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static scan_session_t *scan_session_New( scan_t *p_scan, const scan_tuner_config_t *p_cfg )
{
    scan_session_t *p_session = malloc( sizeof( *p_session ) );
    if( unlikely(p_session == ((void*)0)) )
        return ((void*)0);
    p_session->p_obj = p_scan->p_obj;
    p_session->cfg = *p_cfg;
    p_session->i_snr = -1;
    p_session->local.p_pat = ((void*)0);
    p_session->local.p_sdt = ((void*)0);
    p_session->local.p_nit = ((void*)0);
    p_session->i_nit_pid = -1;
    p_session->b_use_nit = p_scan->parameter.b_use_nit;
    p_session->type = p_scan->parameter.type;
    p_session->others.i_nit = 0;
    p_session->others.i_sdt = 0;
    p_session->others.pp_nit = ((void*)0);
    p_session->others.pp_sdt = ((void*)0);
    p_session->p_pathandle = ((void*)0);
    p_session->p_sdthandle = ((void*)0);
    p_session->p_nithandle = ((void*)0);
    return p_session;;
}
