
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int event_manager; } ;
typedef TYPE_3__ libvlc_media_t ;
struct TYPE_8__ {TYPE_3__* item; } ;
struct TYPE_9__ {TYPE_1__ media_subitemtree_added; } ;
struct TYPE_11__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;
typedef int input_item_node_t ;


 int input_item_add_subnode (TYPE_3__*,int *) ;
 int libvlc_MediaSubItemTreeAdded ;
 int libvlc_event_send (int *,TYPE_4__*) ;

void libvlc_media_add_subtree(libvlc_media_t *p_md, input_item_node_t *node)
{




    input_item_add_subnode( p_md, node );


    libvlc_event_t event;
    event.type = libvlc_MediaSubItemTreeAdded;
    event.u.media_subitemtree_added.item = p_md;


    libvlc_event_send( &p_md->event_manager, &event );
}
