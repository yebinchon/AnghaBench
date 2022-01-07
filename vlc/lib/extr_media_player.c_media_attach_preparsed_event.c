
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_input_item; } ;
typedef TYPE_2__ libvlc_media_t ;
struct TYPE_5__ {int event_manager; } ;


 int input_item_preparsed_changed ;
 int vlc_InputItemPreparsedChanged ;
 int vlc_event_attach (int *,int ,int ,TYPE_2__*) ;

__attribute__((used)) static void media_attach_preparsed_event( libvlc_media_t *p_md )
{
    vlc_event_attach( &p_md->p_input_item->event_manager,
                      vlc_InputItemPreparsedChanged,
                      input_item_preparsed_changed, p_md );
}
