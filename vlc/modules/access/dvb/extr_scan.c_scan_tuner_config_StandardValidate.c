
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_frequency; scalar_t__ type; scalar_t__ i_bandwidth; } ;
typedef TYPE_1__ scan_tuner_config_t ;


 scalar_t__ SCAN_DVB_T ;
 int UINT32_MAX ;

__attribute__((used)) static bool scan_tuner_config_StandardValidate( const scan_tuner_config_t *p_cfg )
{
    if( p_cfg->i_frequency == 0 ||
        p_cfg->i_frequency == UINT32_MAX / 10 )
        return 0;

    if( p_cfg->type == SCAN_DVB_T && p_cfg->i_bandwidth == 0 )
        return 0;

    return 1;
}
