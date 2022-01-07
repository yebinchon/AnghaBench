
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int event_manager; } ;
typedef TYPE_3__ libvlc_media_player_t ;
struct TYPE_6__ {char const* device; } ;
struct TYPE_7__ {TYPE_1__ media_player_audio_device; } ;
struct TYPE_9__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;
typedef int audio_output_t ;


 int libvlc_MediaPlayerAudioDevice ;
 int libvlc_event_send (int *,TYPE_4__*) ;

__attribute__((used)) static void
on_audio_device_changed(audio_output_t *aout, const char *device, void *data)
{
    (void) aout;

    libvlc_media_player_t *mp = data;

    libvlc_event_t event;
    event.type = libvlc_MediaPlayerAudioDevice;
    event.u.media_player_audio_device.device = device;

    libvlc_event_send(&mp->event_manager, &event);
}
