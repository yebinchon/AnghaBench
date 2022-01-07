
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int i_buffer; int * p_buffer; } ;
typedef TYPE_1__ block_t ;
typedef int audio_output_t ;


 int GetWBE (int *) ;
 int VLC_UNUSED (int *) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static int
ConvertFromIEC61937( audio_output_t *p_aout, block_t *p_buffer )
{
    VLC_UNUSED( p_aout );
    uint8_t i_length_mul;

    if( p_buffer->i_buffer < 6 )
        return -1;

    switch( GetWBE( &p_buffer->p_buffer[4] ) & 0xFF )
    {
        case 0x01:
            i_length_mul = 8;
            break;
        case 0x15:
            i_length_mul = 1;
            break;
        case 0x0B:
        case 0x0C:
        case 0x0D:
            i_length_mul = 8;
            break;
        case 0x11:
            i_length_mul = 1;
            break;
        default:
            vlc_assert_unreachable();
    }
    uint16_t i_length = GetWBE( &p_buffer->p_buffer[6] );
    if( i_length == 0 )
        return -1;

    i_length /= i_length_mul;
    if( i_length > p_buffer->i_buffer - 8 )
        return -1;

    p_buffer->p_buffer += 8;
    p_buffer->i_buffer = i_length;

    return 0;
}
