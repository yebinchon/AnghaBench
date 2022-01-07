
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ parsed_status; int is_parsed; int has_asked_preparse; int event_manager; int parsed_lock; int parsed_cond; } ;
typedef TYPE_3__ libvlc_media_t ;
typedef scalar_t__ libvlc_media_parsed_status_t ;
typedef int libvlc_media_list_t ;
struct TYPE_8__ {scalar_t__ new_status; } ;
struct TYPE_9__ {TYPE_1__ media_parsed_changed; } ;
struct TYPE_11__ {TYPE_2__ u; int type; } ;
typedef TYPE_4__ libvlc_event_t ;


 int libvlc_MediaParsedChanged ;
 int libvlc_event_send (int *,TYPE_4__*) ;
 int libvlc_media_list_internal_end_reached (int *) ;
 int libvlc_media_list_lock (int *) ;
 int libvlc_media_list_unlock (int *) ;
 scalar_t__ libvlc_media_parsed_status_done ;
 int * media_get_subitems (TYPE_3__*,int) ;
 int vlc_cond_broadcast (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void send_parsed_changed( libvlc_media_t *p_md,
                                 libvlc_media_parsed_status_t new_status )
{
    libvlc_event_t event;

    vlc_mutex_lock( &p_md->parsed_lock );
    if( p_md->parsed_status == new_status )
    {
        vlc_mutex_unlock( &p_md->parsed_lock );
        return;
    }


    if( !p_md->is_parsed )
    {
        p_md->is_parsed = 1;
        vlc_cond_broadcast( &p_md->parsed_cond );
    }

    p_md->parsed_status = new_status;
    if( p_md->parsed_status != libvlc_media_parsed_status_done )
        p_md->has_asked_preparse = 0;

    vlc_mutex_unlock( &p_md->parsed_lock );

    if( new_status == libvlc_media_parsed_status_done )
    {
        libvlc_media_list_t *p_subitems = media_get_subitems( p_md, 0 );
        if( p_subitems != ((void*)0) )
        {

            libvlc_media_list_lock( p_subitems );
            libvlc_media_list_internal_end_reached( p_subitems );
            libvlc_media_list_unlock( p_subitems );
        }
    }


    event.type = libvlc_MediaParsedChanged;
    event.u.media_parsed_changed.new_status = new_status;


    libvlc_event_send( &p_md->event_manager, &event );
}
