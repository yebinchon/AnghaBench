
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int i_logo_version; int i_logo_id; int i_download_data_id; size_t i_logo_char; int p_logo_char; } ;
typedef TYPE_1__ ts_arib_logo_dr_t ;


 TYPE_1__* calloc (int,int) ;
 int malloc (size_t) ;
 int memcpy (int ,int const*,size_t) ;
 int ts_arib_logo_dr_Delete (TYPE_1__*) ;

ts_arib_logo_dr_t * ts_arib_logo_dr_Decode( const uint8_t *p_data, size_t i_data )
{
    if( i_data < 2 )
        return ((void*)0);

    ts_arib_logo_dr_t *p_dr = calloc( 1, sizeof(*p_dr) );
    if( p_dr )
    {
        p_dr->i_logo_version = p_data[0];
        switch( p_data[0] )
        {
            case 1:
                if( i_data == 7 )
                {
                    p_dr->i_logo_id = ((p_data[1] & 0x01) << 8) | p_data[2];
                    p_dr->i_logo_version = ((p_data[3] & 0x0F) << 8) | p_data[4];
                    p_dr->i_download_data_id = (p_data[5] << 8) | p_data[6];
                    return p_dr;
                }
                break;
            case 2:
                if( i_data == 3 )
                {
                    p_dr->i_logo_id = ((p_data[1] & 0x01) << 8) | p_data[2];
                    return p_dr;
                }
                break;
            case 3:
                if( i_data > 2 )
                {
                    p_dr->p_logo_char = malloc( i_data - 1 );
                    if( p_dr->p_logo_char )
                    {
                        p_dr->i_logo_char = i_data - 1;
                        memcpy( p_dr->p_logo_char, &p_data[1], p_dr->i_logo_char );
                        return p_dr;
                    }
                }
            default:
                break;
        }
        ts_arib_logo_dr_Delete( p_dr );
    }
    return ((void*)0);
}
