
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct CoreAudio_layout_s {int i_channels_layout_tag; } ;
struct TYPE_3__ {int layout; int * p_chans_order; int i_vlc_bitmap; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CoreAudio_Bitmap_to_vlc_bitmap (struct CoreAudio_layout_s const*,int *,int*,int const**) ;
 int CoreAudio_Layout_BITMAP ;
 TYPE_1__* CoreAudio_Layout_mapping ;
 int VLC_SUCCESS ;

__attribute__((used)) static inline int CoreAudio_Layout_to_vlc( const struct CoreAudio_layout_s *c,
                                           uint16_t *pi_bitmap,
                                           uint8_t *pi_channels,
                                           const uint32_t **pp_chans_order )
{
    if( c->i_channels_layout_tag == CoreAudio_Layout_BITMAP )
        return CoreAudio_Bitmap_to_vlc_bitmap( c, pi_bitmap, pi_channels, pp_chans_order );

    for (size_t i=0;i<ARRAY_SIZE(CoreAudio_Layout_mapping);i++)
    {
        if(CoreAudio_Layout_mapping[i].layout == c->i_channels_layout_tag )
        {
            *pi_bitmap = CoreAudio_Layout_mapping[i].i_vlc_bitmap;
            *pp_chans_order = CoreAudio_Layout_mapping[i].p_chans_order;
            *pi_channels = c->i_channels_layout_tag & 0xFF;
            break;
        }
    }
    return VLC_SUCCESS;
}
