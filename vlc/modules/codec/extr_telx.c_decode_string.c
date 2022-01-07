
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int** pi_active_national_set; } ;
typedef TYPE_1__ decoder_sys_t ;


 int bytereverse (int const) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int to_utf8 (char*,int) ;

__attribute__((used)) static void decode_string( char * res, int res_len,
                           decoder_sys_t *p_sys, int magazine,
                           const uint8_t * packet, int len )
{
    char utf8[7];
    char * pt = res;

    for ( int i = 0; i < len; i++ )
    {
        int in = bytereverse( packet[i] ) & 0x7f;
        uint16_t out = 32;
        size_t l;

        switch ( in )
        {

        case 0x23:
            out = p_sys->pi_active_national_set[magazine][0];
            break;
        case 0x24:
            out = p_sys->pi_active_national_set[magazine][1];
            break;
        case 0x40:
            out = p_sys->pi_active_national_set[magazine][2];
            break;
        case 0x5b:
            out = p_sys->pi_active_national_set[magazine][3];
            break;
        case 0x5c:
            out = p_sys->pi_active_national_set[magazine][4];
            break;
        case 0x5d:
            out = p_sys->pi_active_national_set[magazine][5];
            break;
        case 0x5e:
            out = p_sys->pi_active_national_set[magazine][6];
            break;
        case 0x5f:
            out = p_sys->pi_active_national_set[magazine][7];
            break;
        case 0x60:
            out = p_sys->pi_active_national_set[magazine][8];
            break;
        case 0x7b:
            out = p_sys->pi_active_national_set[magazine][9];
            break;
        case 0x7c:
            out = p_sys->pi_active_national_set[magazine][10];
            break;
        case 0x7d:
            out = p_sys->pi_active_national_set[magazine][11];
            break;
        case 0x7e:
            out = p_sys->pi_active_national_set[magazine][12];
            break;


        case 0x0d:

            while ( i + 1 < len && (bytereverse( packet[i+1] ) & 0x7f) != 0x0b )
                i++;
            i += 2;
            break;


        default:

            if ( in >= 0x08 && in <= 0x0f )
            {
                out = p_sys->pi_active_national_set[magazine][13 + in - 8];
                break;
            }


            if ( in > 32 && in < 0x7f )
                out = in;
        }


        if ( out == 0 )
            out = 32;


        to_utf8( utf8, out );
        l = strlen( utf8 );
        if ( pt + l < res + res_len - 1 )
        {
            strcpy(pt, utf8);
            pt += l;
        }


    }

    *pt++ = 0;
}
