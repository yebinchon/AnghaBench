
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct TYPE_3__ {int lang; } ;
typedef TYPE_1__ ps_descriptors_t ;


 int memcpy (int ,unsigned int const*,int) ;

__attribute__((used)) static inline void ps_parse_descriptors( const uint8_t *p_data, size_t i_data,
                                        ps_descriptors_t *p_desc )
{
    while( i_data > 3 && i_data > 2u + p_data[1] )
    {
        switch( p_data[0] )
        {
            case 0x0A:
                if( i_data >= 6 )
                    memcpy( p_desc->lang, &p_data[2], 3 );
                break;

            default:
                break;
        }
        uint8_t i_desc_size = p_data[1];
        p_data += 2 + i_desc_size;
        i_data -= 2 + i_desc_size;
    }
}
