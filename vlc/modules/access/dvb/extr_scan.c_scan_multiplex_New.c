
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int scan_tuner_config_t ;
struct TYPE_5__ {int i_snr; int b_scanned; void* i_sdt_version; void* i_nit_version; int * pp_services; scalar_t__ i_services; int * psz_network_name; int i_network_id; int i_ts_id; int cfg; } ;
typedef TYPE_1__ scan_multiplex_t ;


 int NETWORK_ID_RESERVED ;
 void* UINT8_MAX ;
 scalar_t__ likely (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static scan_multiplex_t *scan_multiplex_New( const scan_tuner_config_t *p_cfg, uint16_t i_ts_id )
{
    scan_multiplex_t *p_mplex = malloc( sizeof(*p_mplex) );
    if( likely(p_mplex) )
    {
        p_mplex->cfg = *p_cfg;
        p_mplex->i_ts_id = i_ts_id;
        p_mplex->i_network_id = NETWORK_ID_RESERVED;
        p_mplex->psz_network_name = ((void*)0);
        p_mplex->i_services = 0;
        p_mplex->pp_services = ((void*)0);
        p_mplex->i_nit_version = UINT8_MAX;
        p_mplex->i_sdt_version = UINT8_MAX;
        p_mplex->i_snr = -1;
        p_mplex->b_scanned = 0;
    }
    return p_mplex;
}
