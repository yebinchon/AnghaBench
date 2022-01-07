
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int uint8_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int AUDIO_ES ;







 int IGNORE_ES ;
 int SPU_ES ;
 int UNKNOWN_ES ;
 int VIDEO_ES ;
 int VLC_TWOCC (int,int) ;

__attribute__((used)) static void AVI_ParseStreamHeader( vlc_fourcc_t i_id,
                                   unsigned int *pi_number,
                                   enum es_format_category_e *pi_type )
{
    int c1, c2;

    c1 = ((uint8_t *)&i_id)[0];
    c2 = ((uint8_t *)&i_id)[1];

    if( c1 < '0' || c1 > '9' || c2 < '0' || c2 > '9' )
    {
        *pi_number = 100;
        *pi_type = UNKNOWN_ES;
    }
    else
    {
        *pi_number = (c1 - '0') * 10 + (c2 - '0' );
        switch( VLC_TWOCC( ((uint8_t *)&i_id)[2], ((uint8_t *)&i_id)[3] ) )
        {
            case 128:
                *pi_type = AUDIO_ES;
                break;
            case 132:
            case 133:
            case 134:
                *pi_type = VIDEO_ES;
                break;
            case 129:
            case 130:
                *pi_type = SPU_ES;
                break;
            case 131:
                *pi_type = IGNORE_ES;
                break;
            default:
                *pi_type = UNKNOWN_ES;
                break;
        }
    }
}
