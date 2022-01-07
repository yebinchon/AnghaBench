
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int scan_tuner_config_t ;
typedef int scan_t ;
typedef int scan_multiplex_t ;


 scalar_t__ likely (int *) ;
 int scan_AddMultiplex (int *,int *) ;
 int * scan_FindMultiplex (int *,int ) ;
 int scan_multiplex_Delete (int *) ;
 int * scan_multiplex_New (int const*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static scan_multiplex_t *scan_FindOrCreateMultiplex( scan_t *p_scan, uint16_t i_ts_id,
                                                     const scan_tuner_config_t *p_cfg )
{
    scan_multiplex_t *p_mplex = scan_FindMultiplex( p_scan, i_ts_id );
    if( p_mplex == ((void*)0) )
    {
        p_mplex = scan_multiplex_New( p_cfg, i_ts_id );
        if( likely(p_mplex) )
        {
            if ( unlikely(!scan_AddMultiplex( p_scan, p_mplex )) )
            {
                scan_multiplex_Delete( p_mplex );
                return ((void*)0);
            }
        }
    }
    return p_mplex;
}
