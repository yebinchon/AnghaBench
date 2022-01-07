
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_11__ {int event_manager; } ;
typedef TYPE_4__ libvlc_media_list_t ;
struct TYPE_8__ {int index; int * item; } ;
struct TYPE_9__ {int index; int * item; } ;
struct TYPE_10__ {TYPE_1__ media_list_will_add_item; TYPE_2__ media_list_item_added; } ;
struct TYPE_12__ {TYPE_3__ u; int type; } ;
typedef TYPE_5__ libvlc_event_t ;
typedef scalar_t__ EventPlaceInTime ;


 scalar_t__ EventDidHappen ;
 int libvlc_MediaListItemAdded ;
 int libvlc_MediaListWillAddItem ;
 int libvlc_event_send (int *,TYPE_5__*) ;

__attribute__((used)) static void
notify_item_addition( libvlc_media_list_t * p_mlist,
                      libvlc_media_t * p_md,
                      int index,
                      EventPlaceInTime event_status )
{
    libvlc_event_t event;


    if( event_status == EventDidHappen )
    {
        event.type = libvlc_MediaListItemAdded;
        event.u.media_list_item_added.item = p_md;
        event.u.media_list_item_added.index = index;
    }
    else
    {
        event.type = libvlc_MediaListWillAddItem;
        event.u.media_list_will_add_item.item = p_md;
        event.u.media_list_will_add_item.index = index;
    }


    libvlc_event_send( &p_mlist->event_manager, &event );
}
