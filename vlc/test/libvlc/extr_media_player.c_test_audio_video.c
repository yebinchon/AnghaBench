
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int libvlc_media_player_t ;
struct TYPE_4__ {int psz_device; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ libvlc_audio_output_device_t ;


 int assert (int) ;
 TYPE_1__* libvlc_audio_output_device_enum (int *) ;
 int libvlc_audio_output_device_list_release (TYPE_1__*) ;
 int libvlc_audio_output_device_set (int *,int *,int ) ;
 int libvlc_get_fullscreen (int *) ;
 int libvlc_set_fullscreen (int *,int) ;
 int libvlc_toggle_fullscreen (int *) ;
 int libvlc_video_get_scale (int *) ;
 int libvlc_video_set_scale (int *,int) ;

__attribute__((used)) static void test_audio_video(libvlc_media_player_t *mp)
{
    bool fs = libvlc_get_fullscreen(mp);
    libvlc_set_fullscreen(mp, 1);
    assert(libvlc_get_fullscreen(mp));
    libvlc_set_fullscreen(mp, 0);
    assert(!libvlc_get_fullscreen(mp));
    libvlc_toggle_fullscreen(mp);
    assert(libvlc_get_fullscreen(mp));
    libvlc_toggle_fullscreen(mp);
    assert(!libvlc_get_fullscreen(mp));
    libvlc_set_fullscreen(mp, fs);
    assert(libvlc_get_fullscreen(mp) == fs);

    assert(libvlc_video_get_scale(mp) == 0.);
    libvlc_video_set_scale(mp, 0.);
    libvlc_video_set_scale(mp, 2.5);
    assert(libvlc_video_get_scale(mp) == 2.5);
    libvlc_video_set_scale(mp, 0.);
    libvlc_video_set_scale(mp, 0.);
    assert(libvlc_video_get_scale(mp) == 0.);

    libvlc_audio_output_device_t *aouts = libvlc_audio_output_device_enum(mp);
    for (libvlc_audio_output_device_t *e = aouts; e != ((void*)0); e = e->p_next)
    {
        libvlc_audio_output_device_set( mp, ((void*)0), e->psz_device );
    }
    libvlc_audio_output_device_list_release( aouts );
}
