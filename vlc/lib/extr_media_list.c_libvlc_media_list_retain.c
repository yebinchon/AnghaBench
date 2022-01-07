
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refcount_lock; int i_refcount; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void libvlc_media_list_retain( libvlc_media_list_t * p_mlist )
{
    vlc_mutex_lock( &p_mlist->refcount_lock );
    p_mlist->i_refcount++;
    vlc_mutex_unlock( &p_mlist->refcount_lock );
}
