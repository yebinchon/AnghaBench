
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_input_item; } ;
typedef TYPE_2__ libvlc_media_t ;
struct TYPE_5__ {int event_manager; } ;


 int input_item_duration_changed ;
 int input_item_meta_changed ;
 int vlc_InputItemDurationChanged ;
 int vlc_InputItemMetaChanged ;
 int vlc_event_attach (int *,int ,int ,TYPE_2__*) ;

__attribute__((used)) static void install_input_item_observer( libvlc_media_t *p_md )
{
    vlc_event_attach( &p_md->p_input_item->event_manager,
                      vlc_InputItemMetaChanged,
                      input_item_meta_changed,
                      p_md );
    vlc_event_attach( &p_md->p_input_item->event_manager,
                      vlc_InputItemDurationChanged,
                      input_item_duration_changed,
                      p_md );
}
