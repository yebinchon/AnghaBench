
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event_manager; } ;
typedef TYPE_1__ libvlc_media_list_t ;
struct TYPE_6__ {int type; } ;
typedef TYPE_2__ libvlc_event_t ;


 int libvlc_MediaListEndReached ;
 int libvlc_event_send (int *,TYPE_2__*) ;

void libvlc_media_list_internal_end_reached( libvlc_media_list_t * p_mlist )
{
    libvlc_event_t event;

    event.type = libvlc_MediaListEndReached;


    libvlc_event_send( &p_mlist->event_manager, &event );
}
