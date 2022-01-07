
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int scan_tuner_config_t ;
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {int spectrum; TYPE_2__ parameter; } ;
typedef TYPE_1__ scan_t ;




 int Scan_Next_DVBC (TYPE_2__*,int *,int *,double*) ;
 int Scan_Next_DVBT (TYPE_2__*,int *,int *,double*) ;
 int VLC_EGENERIC ;

__attribute__((used)) static int Scan_GetNextSpectrumTunerConfig( scan_t *p_scan, scan_tuner_config_t *p_cfg, double *pf_pos )
{
    int i_ret = VLC_EGENERIC;
    switch( p_scan->parameter.type )
    {
        case 128:
            i_ret = Scan_Next_DVBT( &p_scan->parameter, &p_scan->spectrum, p_cfg, pf_pos );
            break;
        case 129:
            i_ret = Scan_Next_DVBC( &p_scan->parameter, &p_scan->spectrum, p_cfg, pf_pos );
            break;
        default:
            break;
    }
    return i_ret;
}
