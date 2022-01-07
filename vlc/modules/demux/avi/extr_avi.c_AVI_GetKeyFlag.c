
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int uint8_t ;


 int AVIIF_KEYFRAME ;
 int GetDWBE (int*) ;






__attribute__((used)) static int AVI_GetKeyFlag( vlc_fourcc_t i_fourcc, uint8_t *p_byte )
{
    switch( i_fourcc )
    {
        case 132:





            if( GetDWBE( p_byte ) != 0x00000100 )
            {

                return AVIIF_KEYFRAME;
            }
            return p_byte[4] & 0x06 ? 0 : AVIIF_KEYFRAME;

        case 131:
        case 130:
        case 128:



            return p_byte[0] & 0xC0 ? 0 : AVIIF_KEYFRAME;
        case 129:




            if( GetDWBE( p_byte ) != 0x000001b6 )
            {

                return AVIIF_KEYFRAME;
            }
            return p_byte[4] & 0xC0 ? 0 : AVIIF_KEYFRAME;

        default:

            return AVIIF_KEYFRAME;
    }
}
