
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int new_duration; } ;
struct TYPE_13__ {TYPE_3__ input_item_duration_changed; } ;
struct TYPE_14__ {TYPE_4__ u; } ;
typedef TYPE_5__ vlc_event_t ;
struct TYPE_15__ {int event_manager; } ;
typedef TYPE_6__ libvlc_media_t ;
struct TYPE_10__ {int new_duration; } ;
struct TYPE_11__ {TYPE_1__ media_duration_changed; } ;
struct TYPE_16__ {TYPE_2__ u; int type; } ;
typedef TYPE_7__ libvlc_event_t ;


 int from_mtime (int ) ;
 int libvlc_MediaDurationChanged ;
 int libvlc_event_send (int *,TYPE_7__*) ;

__attribute__((used)) static void input_item_duration_changed( const vlc_event_t *p_event,
                                         void * user_data )
{
    libvlc_media_t * p_md = user_data;
    libvlc_event_t event;


    event.type = libvlc_MediaDurationChanged;
    event.u.media_duration_changed.new_duration =
        from_mtime(p_event->u.input_item_duration_changed.new_duration);


    libvlc_event_send( &p_md->event_manager, &event );
}
