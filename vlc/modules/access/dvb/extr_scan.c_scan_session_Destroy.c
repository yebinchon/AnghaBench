
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int p_obj; } ;
typedef TYPE_3__ scan_t ;
struct TYPE_12__ {size_t i_nit; size_t i_sdt; int ** pp_sdt; int ** pp_nit; } ;
struct TYPE_11__ {int * p_nit; int * p_sdt; int * p_pat; } ;
struct TYPE_14__ {TYPE_2__ others; int cfg; int i_snr; TYPE_1__ local; } ;
typedef TYPE_4__ scan_session_t ;
typedef int dvbpsi_sdt_t ;
typedef int dvbpsi_pat_t ;
typedef int dvbpsi_nit_t ;


 int ParseNIT (int ,TYPE_3__*,int *,int *) ;
 int ParsePAT (int ,TYPE_3__*,int *,int *,int ) ;
 int ParseSDT (int ,TYPE_3__*,int *) ;
 int scan_session_Delete (TYPE_4__*) ;

__attribute__((used)) static void scan_session_Destroy( scan_t *p_scan, scan_session_t *p_session )
{
    dvbpsi_pat_t *p_pat = p_session->local.p_pat;
    dvbpsi_sdt_t *p_sdt = p_session->local.p_sdt;
    dvbpsi_nit_t *p_nit = p_session->local.p_nit;


    if( p_pat )
        ParsePAT( p_scan->p_obj, p_scan, p_pat, &p_session->cfg, p_session->i_snr );


    if( p_nit )
        ParseNIT( p_scan->p_obj, p_scan, p_nit, &p_session->cfg );


    if( p_sdt )
        ParseSDT( p_scan->p_obj, p_scan, p_sdt );


    for( size_t i=0; i<p_session->others.i_nit; i++ )
        ParseNIT( p_scan->p_obj, p_scan, p_session->others.pp_nit[i], ((void*)0) );


    for( size_t i=0; i<p_session->others.i_sdt; i++ )
        ParseSDT( p_scan->p_obj, p_scan, p_session->others.pp_sdt[i] );


    scan_session_Delete( p_session );
}
