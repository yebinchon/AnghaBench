
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_manager; } ;
typedef TYPE_1__ libvlc_media_list_t ;
typedef int libvlc_event_manager_t ;



libvlc_event_manager_t *
libvlc_media_list_event_manager( libvlc_media_list_t * p_mlist )
{
    return &p_mlist->event_manager;
}
