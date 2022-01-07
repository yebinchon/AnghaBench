
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_5__ {TYPE_2__* p_dec_config; } ;
typedef TYPE_1__ od_read_params_t ;
struct TYPE_6__ {int i_streamType; int i_extra; void* i_objectTypeIndication; } ;
typedef TYPE_2__ decoder_config_descriptor_t ;


 void* ODGetBytes (unsigned int*,int const**,int) ;
 int ODTag_DecSpecificDescr ;
 int OD_Desc_Read (int *,unsigned int*,int const**,int ,int,TYPE_1__) ;
 int od_debug (int *,char*,void*,int,int ) ;

__attribute__((used)) static bool OD_DecConfigDesc_Read( vlc_object_t *p_object, unsigned i_data, const uint8_t *p_data,
                                    od_read_params_t params )
{
    decoder_config_descriptor_t *p_dec_config = params.p_dec_config;

    if( i_data < 13 )
        return 0;

    p_dec_config->i_objectTypeIndication = ODGetBytes( &i_data, &p_data, 1 );
    uint8_t i_flags = ODGetBytes( &i_data, &p_data, 1 );
    p_dec_config->i_streamType = i_flags >> 2;

    ODGetBytes( &i_data, &p_data, 3 );
    ODGetBytes( &i_data, &p_data, 4 );
    ODGetBytes( &i_data, &p_data, 4 );


    OD_Desc_Read( p_object, &i_data, &p_data,
                   ODTag_DecSpecificDescr, 1, params );

    od_debug( p_object, "   * read decoder objecttype: %x streamtype:%x extra: %u",
               p_dec_config->i_objectTypeIndication, p_dec_config->i_streamType, p_dec_config->i_extra );

    return 1;
}
