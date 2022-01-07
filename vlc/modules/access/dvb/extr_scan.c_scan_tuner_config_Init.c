
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int delivery; void* inner_fec; void* coderate_hp; void* coderate_lp; } ;
typedef TYPE_1__ scan_tuner_config_t ;
struct TYPE_7__ {int type; } ;
typedef TYPE_2__ scan_parameter_t ;


 void* SCAN_CODERATE_AUTO ;
 int SCAN_DELIVERY_DVB_C ;
 int SCAN_DELIVERY_DVB_S ;
 int SCAN_DELIVERY_DVB_T ;
 int SCAN_DELIVERY_UNKNOWN ;



 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void scan_tuner_config_Init( scan_tuner_config_t *p_cfg, const scan_parameter_t *p_params )
{
    memset( p_cfg, 0, sizeof(*p_cfg) );
    p_cfg->coderate_lp = SCAN_CODERATE_AUTO;
    p_cfg->coderate_hp = SCAN_CODERATE_AUTO;
    p_cfg->inner_fec = SCAN_CODERATE_AUTO;
    switch(p_params->type)
    {
        case 128: p_cfg->delivery = SCAN_DELIVERY_DVB_T; break;
        case 129: p_cfg->delivery = SCAN_DELIVERY_DVB_S; break;
        case 130: p_cfg->delivery = SCAN_DELIVERY_DVB_C; break;
        default: p_cfg->delivery = SCAN_DELIVERY_UNKNOWN; break;
    }
    p_cfg->type = p_params->type;
}
