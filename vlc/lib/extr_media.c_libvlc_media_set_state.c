
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* libvlc_state_t ;
struct TYPE_9__ {int event_manager; void* state; } ;
typedef TYPE_3__ libvlc_media_t ;
struct TYPE_7__ {void* new_state; } ;
struct TYPE_8__ {TYPE_1__ media_state_changed; } ;
struct TYPE_10__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;


 int libvlc_MediaStateChanged ;
 int libvlc_event_send (int *,TYPE_4__*) ;

void
libvlc_media_set_state( libvlc_media_t *p_md,
                                   libvlc_state_t state )
{
    libvlc_event_t event;

    p_md->state = state;


    event.type = libvlc_MediaStateChanged;
    event.u.media_state_changed.new_state = state;


    libvlc_event_send( &p_md->event_manager, &event );
}
