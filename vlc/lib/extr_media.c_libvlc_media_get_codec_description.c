
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int libvlc_track_type_t ;


 int AUDIO_ES ;
 int SPU_ES ;
 int UNKNOWN_ES ;
 int VIDEO_ES ;




 char const* vlc_fourcc_GetDescription (int ,int ) ;

const char *
libvlc_media_get_codec_description( libvlc_track_type_t i_type,
                                    uint32_t i_codec )
{
    switch( i_type )
    {
        case 131:
            return vlc_fourcc_GetDescription( AUDIO_ES, i_codec );
        case 128:
            return vlc_fourcc_GetDescription( VIDEO_ES, i_codec );
        case 130:
            return vlc_fourcc_GetDescription( SPU_ES, i_codec );
        case 129:
        default:
            return vlc_fourcc_GetDescription( UNKNOWN_ES, i_codec );
    }
}
