
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int event_manager; int p_libvlc_instance; } ;
typedef TYPE_3__ libvlc_media_t ;
typedef int libvlc_media_list_t ;
struct TYPE_11__ {TYPE_3__* new_child; } ;
struct TYPE_12__ {TYPE_1__ media_subitem_added; } ;
struct TYPE_14__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;
typedef int input_item_t ;


 int libvlc_MediaSubItemAdded ;
 int libvlc_event_send (int *,TYPE_4__*) ;
 int libvlc_media_list_internal_add_media (int *,TYPE_3__*) ;
 int libvlc_media_list_lock (int *) ;
 int libvlc_media_list_unlock (int *) ;
 TYPE_3__* libvlc_media_new_from_input_item (int ,int *) ;
 int * media_get_subitems (TYPE_3__*,int) ;

__attribute__((used)) static libvlc_media_t *input_item_add_subitem( libvlc_media_t *p_md,
                                               input_item_t *item )
{
    libvlc_media_t * p_md_child;
    libvlc_media_list_t *p_subitems;
    libvlc_event_t event;

    p_md_child = libvlc_media_new_from_input_item( p_md->p_libvlc_instance,
                                                   item );


    p_subitems = media_get_subitems( p_md, 1 );
    if( p_subitems != ((void*)0) )
    {
        libvlc_media_list_lock( p_subitems );
        libvlc_media_list_internal_add_media( p_subitems, p_md_child );
        libvlc_media_list_unlock( p_subitems );
    }


    event.type = libvlc_MediaSubItemAdded;
    event.u.media_subitem_added.new_child = p_md_child;


    libvlc_event_send( &p_md->event_manager, &event );
    return p_md_child;
}
