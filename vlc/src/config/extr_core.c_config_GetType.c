
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_type; } ;
typedef TYPE_1__ module_config_t ;


 int CONFIG_CLASS (int ) ;




 int VLC_VAR_BOOL ;
 int VLC_VAR_FLOAT ;
 int VLC_VAR_INTEGER ;
 int VLC_VAR_STRING ;
 TYPE_1__* config_FindConfig (char const*) ;

int config_GetType(const char *psz_name)
{
    module_config_t *p_config = config_FindConfig(psz_name);


    if( !p_config )
    {
        return 0;
    }

    switch( CONFIG_CLASS(p_config->i_type) )
    {
        case 130:
            return VLC_VAR_FLOAT;
        case 129:
            return VLC_VAR_INTEGER;
        case 131:
            return VLC_VAR_BOOL;
        case 128:
            return VLC_VAR_STRING;
        default:
            return 0;
    }
}
