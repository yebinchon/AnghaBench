
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int i_bandwidth; int i_symbolrate; int type; int inner_fec; int polarization; int coderate_lp; int coderate_hp; int modulation; int i_frequency; } ;
typedef TYPE_3__ scan_tuner_config_t ;
struct TYPE_13__ {scalar_t__ b_use_nit; } ;
struct TYPE_12__ {int i_index; } ;
struct TYPE_15__ {double i_scanlist; double i_multiplex; int i_multiplex_toscan; TYPE_7__** pp_multiplex; int b_multiplexes_from_nit; TYPE_2__ parameter; int * p_scanlist; TYPE_1__ spectrum; TYPE_5__* p_current; } ;
typedef TYPE_4__ scan_t ;
struct TYPE_16__ {int i_bw; int delivery; int i_rate; struct TYPE_16__* p_next; int inner_fec; int polarization; int coderate_lp; int coderate_hp; int modulation; int i_freq; } ;
typedef TYPE_5__ scan_list_entry_t ;
struct TYPE_17__ {TYPE_3__ cfg; int b_scanned; } ;






 int SCAN_DVB_C ;
 int SCAN_DVB_S ;
 int SCAN_DVB_T ;
 int SCAN_NONE ;
 int Scan_GetNextSpectrumTunerConfig (TYPE_4__*,TYPE_3__*,double*) ;
 int VLC_ENOITEM ;
 int VLC_SUCCESS ;
 int scan_SetMultiplexScanStatus (TYPE_4__*,TYPE_7__*,int) ;

__attribute__((used)) static int Scan_GetNextTunerConfig( scan_t *p_scan, scan_tuner_config_t *p_cfg, double *pf_pos )
{

    if( p_scan->p_scanlist && p_scan->p_current )
    {
        const scan_list_entry_t *p_entry = p_scan->p_current;
        p_cfg->i_frequency = p_entry->i_freq;
        p_cfg->i_bandwidth = p_entry->i_bw / 1000000;
        p_cfg->modulation = p_entry->modulation;

        switch( p_entry->delivery )
        {
            case 128:
                break;
            case 129:
                p_cfg->coderate_hp = p_entry->coderate_hp;
                p_cfg->coderate_lp = p_entry->coderate_lp;
                p_cfg->type = SCAN_DVB_T;
                break;
            case 130:
                p_cfg->type = SCAN_DVB_S;
                p_cfg->polarization = p_entry->polarization;
                p_cfg->i_symbolrate = p_entry->i_rate / 1000;
                p_cfg->inner_fec = p_entry->inner_fec;
                break;
            case 131:
                p_cfg->type = SCAN_DVB_C;
                p_cfg->i_symbolrate = p_entry->i_rate / 1000;
                p_cfg->inner_fec = p_entry->inner_fec;
                break;
            default:
                p_cfg->type = SCAN_NONE;
                break;
        }

        p_scan->p_current = p_scan->p_current->p_next;
        *pf_pos = (double) p_scan->spectrum.i_index++ / p_scan->i_scanlist;

        return VLC_SUCCESS;
    }

    if( p_scan->p_scanlist == ((void*)0) &&
        ( p_scan->i_multiplex == 0 ||
         (p_scan->parameter.b_use_nit && !p_scan->b_multiplexes_from_nit) ) )
    {
        int i_ret = Scan_GetNextSpectrumTunerConfig( p_scan, p_cfg, pf_pos );
        if( i_ret == VLC_SUCCESS )
            return i_ret;
    }

    if( p_scan->i_multiplex_toscan )
    {
        for( size_t i=0; i<p_scan->i_multiplex_toscan; i++ )
        {
            if( !p_scan->pp_multiplex[i]->b_scanned )
            {
                scan_SetMultiplexScanStatus( p_scan, p_scan->pp_multiplex[i], 1 );
                *p_cfg = p_scan->pp_multiplex[i]->cfg;
                *pf_pos = (double) 1.0 - (p_scan->i_multiplex / p_scan->i_multiplex_toscan);
                return VLC_SUCCESS;
            }
        }
    }

    return VLC_ENOITEM;
}
