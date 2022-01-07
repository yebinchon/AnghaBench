
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {scalar_t__ modulation; scalar_t__ i_symbolrate_index; scalar_t__ i_index; } ;
struct TYPE_12__ {int b_multiplexes_from_nit; TYPE_1__ spectrum; int * p_scanlist; int * p_current; scalar_t__ i_scanlist; int i_time_start; int parameter; scalar_t__ i_multiplex_toscan; int * pp_multiplex; scalar_t__ i_multiplex; int * p_dialog_id; void* p_cbdata; int * pf_notify_service; int pf_filter; int pf_read; int pf_stats; int pf_tune; int p_obj; } ;
typedef TYPE_2__ scan_t ;
struct TYPE_13__ {scalar_t__ type; } ;
typedef TYPE_3__ scan_parameter_t ;
typedef int scan_frontend_tune_cb ;
typedef int scan_frontend_stats_cb ;
typedef int scan_demux_read_cb ;
typedef int scan_demux_filter_cb ;


 scalar_t__ SCAN_NONE ;
 int VLC_OBJECT (int *) ;
 TYPE_2__* malloc (int) ;
 int scan_Debug_Parameters (int *,TYPE_3__ const*) ;
 int scan_Prepare (int *,TYPE_3__ const*,TYPE_2__*) ;
 int scan_parameter_Copy (TYPE_3__ const*,int *) ;
 int scan_parameter_Init (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlc_tick_now () ;

scan_t *scan_New( vlc_object_t *p_obj, const scan_parameter_t *p_parameter,
                  scan_frontend_tune_cb pf_frontend,
                  scan_frontend_stats_cb pf_status,
                  scan_demux_filter_cb pf_filter,
                  scan_demux_read_cb pf_read,
                  void *p_cbdata )
{
    if( p_parameter->type == SCAN_NONE )
        return ((void*)0);

    scan_t *p_scan = malloc( sizeof( *p_scan ) );
    if( unlikely(p_scan == ((void*)0)) )
        return ((void*)0);

    p_scan->p_obj = VLC_OBJECT(p_obj);
    p_scan->pf_tune = pf_frontend;
    p_scan->pf_stats = pf_status;
    p_scan->pf_read = pf_read;
    p_scan->pf_filter = pf_filter;
    p_scan->pf_notify_service = ((void*)0);
    p_scan->p_cbdata = p_cbdata;
    p_scan->p_dialog_id = ((void*)0);
    p_scan->i_multiplex = 0;
    p_scan->pp_multiplex = ((void*)0);
    p_scan->i_multiplex_toscan = 0;
    p_scan->b_multiplexes_from_nit = 0;
    scan_parameter_Init( &p_scan->parameter );
    scan_parameter_Copy( p_parameter, &p_scan->parameter );
    p_scan->i_time_start = vlc_tick_now();
    p_scan->p_scanlist = ((void*)0);
    p_scan->i_scanlist = 0;

    scan_Prepare( p_obj, p_parameter, p_scan );
    p_scan->p_current = p_scan->p_scanlist;

    p_scan->spectrum.i_index = 0;
    p_scan->spectrum.i_symbolrate_index = 0;
    p_scan->spectrum.modulation = 0;

    scan_Debug_Parameters( p_obj, p_parameter );

    return p_scan;
}
