
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* p_dec_config; } ;
typedef TYPE_1__ od_read_params_t ;
struct TYPE_5__ {unsigned int i_extra; scalar_t__ p_extra; } ;
typedef TYPE_2__ decoder_config_descriptor_t ;


 int VLC_UNUSED (int *) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (scalar_t__,int const*,unsigned int) ;

__attribute__((used)) static bool OD_DecSpecificDesc_Read( vlc_object_t *p_object, unsigned i_data, const uint8_t *p_data,
                                      od_read_params_t params )
{
    VLC_UNUSED(p_object);
    decoder_config_descriptor_t *p_dec_config = params.p_dec_config;

    p_dec_config->p_extra = malloc( i_data );
    if( p_dec_config->p_extra )
    {
        p_dec_config->i_extra = i_data;
        memcpy( p_dec_config->p_extra, p_data, p_dec_config->i_extra );
    }

    return !!p_dec_config->i_extra;
}
