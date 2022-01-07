
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_3__ {int object_lock; int * p_md; int * p_internal_md; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int libvlc_media_retain (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

libvlc_media_t *
libvlc_media_list_media( libvlc_media_list_t * p_mlist )
{
    libvlc_media_t *p_md;

    vlc_mutex_lock( &p_mlist->object_lock );
    p_md = p_mlist->p_internal_md ? p_mlist->p_internal_md : p_mlist->p_md;
    if( p_md )
        libvlc_media_retain( p_md );
    vlc_mutex_unlock( &p_mlist->object_lock );

    return p_md;
}
