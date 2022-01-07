
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int subitems_lock; TYPE_2__* p_subitems; int p_libvlc_instance; } ;
typedef TYPE_1__ libvlc_media_t ;
struct TYPE_7__ {int b_read_only; TYPE_1__* p_internal_md; } ;
typedef TYPE_2__ libvlc_media_list_t ;


 TYPE_2__* libvlc_media_list_new (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static libvlc_media_list_t *media_get_subitems( libvlc_media_t * p_md,
                                                bool b_create )
{
    libvlc_media_list_t *p_subitems = ((void*)0);

    vlc_mutex_lock( &p_md->subitems_lock );
    if( p_md->p_subitems == ((void*)0) && b_create )
    {
        p_md->p_subitems = libvlc_media_list_new( p_md->p_libvlc_instance );
        if( p_md->p_subitems != ((void*)0) )
        {
            p_md->p_subitems->b_read_only = 1;
            p_md->p_subitems->p_internal_md = p_md;
        }
    }
    p_subitems = p_md->p_subitems;
    vlc_mutex_unlock( &p_md->subitems_lock );
    return p_subitems;
}
