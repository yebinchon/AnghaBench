
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_4__ {int object_lock; int * p_md; scalar_t__ p_internal_md; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int libvlc_media_release (int *) ;
 int libvlc_media_retain (int *) ;
 int mlist_is_writable (TYPE_1__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void libvlc_media_list_set_media( libvlc_media_list_t * p_mlist,
                                  libvlc_media_t * p_md )

{
    vlc_mutex_lock( &p_mlist->object_lock );
    if( p_mlist->p_internal_md || !mlist_is_writable(p_mlist) )
    {
        vlc_mutex_unlock( &p_mlist->object_lock );
        return;
    }
    libvlc_media_release( p_mlist->p_md );
    libvlc_media_retain( p_md );
    p_mlist->p_md = p_md;
    vlc_mutex_unlock( &p_mlist->object_lock );
}
